import Foundation
enum MissionListServiceFilterOptions: Hashable {
    case year(String)
}

enum MissionListServiceSortOptions {
    case byYear
}

protocol MissionListService {
    func fetchMissions(filter: Set<MissionListServiceFilterOptions>?, sort: MissionListServiceSortOptions, limit: UInt, completion: (Response<MissionsResponse>) -> Void)
}
