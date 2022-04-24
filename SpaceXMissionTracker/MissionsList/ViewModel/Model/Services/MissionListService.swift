import Foundation
enum MissionListServiceFilterOptions {
    case year
}

enum MissionListServiceSortOptions {
    case alphabetically
}

struct MissionResponse {
    struct Mission {
        let rocketName: String
        let missionName: String
        let launchYear: String
    }
}

protocol MissionListService {
    func fetchMissions(filter: Set<MissionListServiceFilterOptions>?, sort: MissionListServiceSortOptions, limit: Int, completion: () -> Response<[MissionResponse.Mission]>)
}
