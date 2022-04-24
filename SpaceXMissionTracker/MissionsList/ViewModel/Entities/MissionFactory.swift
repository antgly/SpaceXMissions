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
        return []
    }
}
