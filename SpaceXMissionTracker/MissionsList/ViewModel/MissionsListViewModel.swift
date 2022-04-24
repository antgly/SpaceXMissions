import Foundation

enum MissionListFilterOptions {
    case year
}

enum MissionListSortOptions {
    case alphabetically
}

protocol MissionsListViewModel {
    func listOfSpaceXMissions(filter: Set<MissionListFilterOptions>?,
                              sort: Set<MissionListSortOptions>?,
                              completion: ([Mission]) -> Void)
}

struct DummyMissionsListViewModel: MissionsListViewModel {
    func listOfSpaceXMissions(filter: Set<MissionListFilterOptions>?, sort: Set<MissionListSortOptions>?, completion: ([Mission]) -> Void) {
        let currentDate = Date.now
        let missions = [
            Mission(date: currentDate.addingTimeInterval(-1 * 1000 * 60 * 60 * 24)),
            Mission(date: currentDate)
        ]
        completion(missions)    }
}
