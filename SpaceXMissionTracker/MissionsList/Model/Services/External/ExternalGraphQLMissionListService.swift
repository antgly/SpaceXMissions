class ExternalGraphQLMissionListService: MissionListService {
    func fetchMissions(filter: Set<MissionListServiceFilterOptions>?, sort: MissionListServiceSortOptions, limit: UInt, completion: (Response<MissionsResponse>) -> Void) {
        completion(.Data(.init(missions: [])))
    }
}
