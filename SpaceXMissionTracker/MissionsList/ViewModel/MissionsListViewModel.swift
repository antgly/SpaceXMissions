import Foundation
import os

enum MissionListFilterOptions: Hashable {
    case `default`
    case year(String)
}

enum MissionListSortOptions {
    case `default`
    case byRocketName
    case byYear
}

protocol MissionsListViewModel {
    func listOfSpaceXMissions(filter: MissionListFilterOptions,
                              sort: MissionListSortOptions,
                              completion: @escaping ([Mission]) -> Void)
}

class MissionsListViewModelImpl: MissionsListViewModel {
    private let missionListService: MissionListService
    private let missionFactory: MissionFactory
    
    init(missionListService: MissionListService = ExternalGraphQLMissionListService(),
         missionFactory: MissionFactory = MissionFactoryImpl()
    ) {
        self.missionListService = missionListService
        self.missionFactory = missionFactory
    }
    
    private func mapMissionListSortOptionToMissionListServiceSortOption(_ missionListSortOption: MissionListSortOptions) -> MissionListServiceSortOptions {
        switch missionListSortOption {
        case .byYear:
            return .year
        case .byRocketName:
            return .rocketName
        case .default:
            return .default
        }
    }
    
    private func mapMissionListFilterOptionToMissionListServiceFilterOption(
        _ missionListFilterOption: MissionListFilterOptions
    ) -> MissionListServiceFilterOptions {
        switch missionListFilterOption {
        case .default:
            return .year(String(Calendar.autoupdatingCurrent.dateComponents([.year], from: Date.now).year!))
        case .year(let year):
            return .year(year)
        }
    }

    func listOfSpaceXMissions(filter: MissionListFilterOptions = .default, sort: MissionListSortOptions = .default, completion: @escaping ([Mission]) -> Void) {
        
        DispatchQueue(label: "FetchSpaceXMissionDataQueue", qos: .userInitiated).async {
            let sortOption = self.mapMissionListSortOptionToMissionListServiceSortOption(sort)
            let serviceFilter: MissionListServiceFilterOptions = {
                switch filter {
                case .default:
                    return .default
                case .year(let string):
                    return .year(string)
                }
            }()
            
            self.missionListService.fetchMissions(filter: serviceFilter, sort: sortOption, limit: 10){ [weak self] response in
                if let self = self {
                    switch response {
                    case .Data(let missions):
                        let missionsToReturn = type(of: self.missionFactory).createMissionsFromMissionsResponse(missions)
                        DispatchQueue.main.async {
                            completion(missionsToReturn)
                        }
                    case .Error(let error):
                        os_log("Error: %@", log: .default, type: .error, String(describing: error))
                        DispatchQueue.main.async {
                            completion([])
                        }
                    }
                }
            }        }
    }
}

struct DummyMissionsListViewModel: MissionsListViewModel {
    func listOfSpaceXMissions(filter: MissionListFilterOptions, sort: MissionListSortOptions, completion: ([Mission]) -> Void) {
        let missions = [
            Mission(
                name: "RazakSat",
                launchYear: "1991",
                rocketName: "Voyager"
            ),
            Mission(
                name: "RazakSat II",
                launchYear: "1990",
                rocketName: "Voyager II"
            )
        ]
        completion(missions)
    }
}
