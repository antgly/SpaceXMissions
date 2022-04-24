struct MissionsResponse {
    struct Mission {
        let year: String
        let rocketName: String
        let missionName: String
    }
    
    let missions: [MissionsResponse.Mission]
}
