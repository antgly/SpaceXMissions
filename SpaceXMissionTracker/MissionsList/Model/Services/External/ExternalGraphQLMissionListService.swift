import Foundation
import Apollo
class ExternalGraphQLMissionListService: MissionListService {
    private lazy var apolloClient = ApolloClient(url: URL(string: "https://api.spacex.land/graphql/")!)
    func fetchMissions(filter: MissionListServiceFilterOptions = .default, sort: MissionListServiceSortOptions = .default, limit: UInt = 10, completion: @escaping (Response<MissionsResponse>) -> Void) {
        let launchYearToFilterBy: String? = {
            switch filter {
            case .default:
                return nil
            case .year(let string):
                return string
            }
        }()
        let launchFind = LaunchFind(launchYear: launchYearToFilterBy)
        let query = FetchMissionsQuery(find: launchFind, sort: sort.gqlValue(), limit: Int(limit))
        apolloClient.fetch(query: query) { result in
            switch result {
              case .success(let graphQLResult):
                let missions: [MissionsResponse.Mission]? = graphQLResult.data?.launchesPast?.compactMap { launchesPast in
                    guard let missionName = launchesPast?.missionName,
                       let launchYear = launchesPast?.launchYear,
                       let rocketName = launchesPast?.rocket?.rocketName else {
                        return nil
                    }
                    
                    return MissionsResponse.Mission(year: launchYear, rocketName: rocketName, missionName: missionName)
                }

                let missionsResponse = MissionsResponse(missions: missions ?? [])
                completion(.Data(missionsResponse))
              case .failure(let error):
                print("Failure! Error: \(error)")
              }
        }
    }
}
