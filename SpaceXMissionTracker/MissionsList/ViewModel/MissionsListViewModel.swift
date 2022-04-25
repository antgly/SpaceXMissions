import Foundation
import os

enum MissionListFilterOptions: Hashable {
    case year(String)
}

enum MissionListSortOptions {
    case byYear
}

protocol MissionsListViewModel {
    func listOfSpaceXMissions(filters: Set<MissionListFilterOptions>?,
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
            return .byYear
        }
    }
    
    private func mapMissionListFilterOptionToMissionListServiceFilterOption(
        _ missionListFilterOption: MissionListFilterOptions
    ) -> MissionListServiceFilterOptions {
        switch missionListFilterOption {
        case .year(let year):
            return .year(year)
        }
    }

    func listOfSpaceXMissions(filters: Set<MissionListFilterOptions>? = nil, sort: MissionListSortOptions = .byYear, completion: @escaping ([Mission]) -> Void) {
        
        DispatchQueue(label: "FetchSpaceXMissionDataQueue", qos: .userInitiated).async {
            let sortOption = self.mapMissionListSortOptionToMissionListServiceSortOption(sort)
            let serviceFiltersSet: Set<MissionListServiceFilterOptions>? = Set(filters?.compactMap(self.mapMissionListFilterOptionToMissionListServiceFilterOption(_:)) ?? [])
            
            self.missionListService.fetchMissions(filter: serviceFiltersSet, sort: sortOption, limit: 10){ [weak self] response in
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
    func listOfSpaceXMissions(filters: Set<MissionListFilterOptions>?, sort: MissionListSortOptions, completion: ([Mission]) -> Void) {
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
