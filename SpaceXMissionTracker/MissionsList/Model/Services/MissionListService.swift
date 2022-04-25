import Foundation
enum MissionListServiceFilterOptions: Hashable {
    case `default`
    case year(String)
}

enum MissionListServiceSortOptions {
    case `default`
    case year
    case rocketName
}

extension MissionListServiceSortOptions {
    func gqlValue() -> String? {
        switch self {
        case .year:
            return "year"
        case .rocketName:
            return "rocket_name"
        case .default:
            return nil
        }
    }
}

protocol MissionListService {
    func fetchMissions(filter: MissionListServiceFilterOptions, sort: MissionListServiceSortOptions, limit: UInt, completion: @escaping (Response<MissionsResponse>) -> Void)
}
