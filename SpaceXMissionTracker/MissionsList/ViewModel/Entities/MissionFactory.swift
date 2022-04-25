import Foundation

struct Mission {
    var name: String
    var launchYear: String
    var rocketName: String
}

protocol MissionFactory {
    static func createMissionsFromMissionsResponse(_ response: MissionsResponse) -> [Mission]
}

class MissionFactoryImpl: MissionFactory {
    static func createMissionsFromMissionsResponse(_ response: MissionsResponse) -> [Mission] {
        response.missions.map {
            return Mission(name: $0.missionName, launchYear: $0.year, rocketName: $0.rocketName)
        }
    }
}
