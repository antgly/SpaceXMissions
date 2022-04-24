import Foundation
enum MissionListServiceFilterOptions {
    case year
}

enum MissionListServiceSortOptions {
    case alphabetically
}

protocol MissionListService {
    func fetchMissions(filter: Set<MissionListServiceFilterOptions>?, sort: MissionListServiceSortOptions, limit: UInt, completion: () -> Response<[MissionResponse.Mission]>)
}
