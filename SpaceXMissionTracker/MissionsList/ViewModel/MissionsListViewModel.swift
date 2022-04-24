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

struct DummyMission: Mission {
    var name: String
    var launchYear: String
    var rocketName: String
}

struct DummyMissionsListViewModel: MissionsListViewModel {
    func listOfSpaceXMissions(filter: Set<MissionListFilterOptions>?, sort: Set<MissionListSortOptions>?, completion: ([Mission]) -> Void) {
        let missions = [
            DummyMission(
                name: "RazakSat",
                launchYear: "2009",
                rocketName: "Voyager"
            ),
            DummyMission(
                name: "RazakSat II",
                launchYear: "2008",
                rocketName: "Voyager II"
            )
        ]
        completion(missions)
    }
}
