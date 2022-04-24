import Foundation

protocol Mission {
    var launchYear: String { get }
    var rocketName: String { get }
    var name: String { get }
}

protocol MissionFactory {
    static func createMission() -> Mission
}
