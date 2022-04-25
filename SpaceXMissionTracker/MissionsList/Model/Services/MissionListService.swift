import Foundation
enum MissionListServiceFilterOptions: Hashable {
    case year(String)
}

enum MissionListServiceSortOptions {
    case byYear
}

extension MissionListServiceSortOptions {
    func gqlValue() -> String {
        switch self {
        case .byYear:
            return "year"
        }
    }
}

protocol MissionListService {
    func fetchMissions(filter: Set<MissionListServiceFilterOptions>?, sort: MissionListServiceSortOptions, limit: UInt, completion: @escaping (Response<MissionsResponse>) -> Void)
}
