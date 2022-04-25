// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct LaunchFind: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - apoapsisKm
  ///   - block
  ///   - capSerial
  ///   - capsuleReuse
  ///   - coreFlight
  ///   - coreReuse
  ///   - coreSerial
  ///   - customer
  ///   - eccentricity
  ///   - end
  ///   - epoch
  ///   - fairingsRecovered
  ///   - fairingsRecoveryAttempt
  ///   - fairingsReuse
  ///   - fairingsReused
  ///   - fairingsShip
  ///   - gridfins
  ///   - id
  ///   - inclinationDeg
  ///   - landSuccess
  ///   - landingIntent
  ///   - landingType
  ///   - landingVehicle
  ///   - launchDateLocal
  ///   - launchDateUtc
  ///   - launchSuccess
  ///   - launchYear
  ///   - legs
  ///   - lifespanYears
  ///   - longitude
  ///   - manufacturer
  ///   - meanMotion
  ///   - missionId
  ///   - missionName
  ///   - nationality
  ///   - noradId
  ///   - orbit
  ///   - payloadId
  ///   - payloadType
  ///   - periapsisKm
  ///   - periodMin
  ///   - raan
  ///   - referenceSystem
  ///   - regime
  ///   - reused
  ///   - rocketId
  ///   - rocketName
  ///   - rocketType
  ///   - secondStageBlock
  ///   - semiMajorAxisKm
  ///   - ship
  ///   - sideCore1Reuse
  ///   - sideCore2Reuse
  ///   - siteId
  ///   - siteNameLong
  ///   - siteName
  ///   - start
  ///   - tbd
  ///   - tentativeMaxPrecision
  ///   - tentative
  public init(apoapsisKm: Swift.Optional<Double?> = nil, block: Swift.Optional<Int?> = nil, capSerial: Swift.Optional<String?> = nil, capsuleReuse: Swift.Optional<String?> = nil, coreFlight: Swift.Optional<Int?> = nil, coreReuse: Swift.Optional<String?> = nil, coreSerial: Swift.Optional<String?> = nil, customer: Swift.Optional<String?> = nil, eccentricity: Swift.Optional<Double?> = nil, end: Swift.Optional<String?> = nil, epoch: Swift.Optional<String?> = nil, fairingsRecovered: Swift.Optional<String?> = nil, fairingsRecoveryAttempt: Swift.Optional<String?> = nil, fairingsReuse: Swift.Optional<String?> = nil, fairingsReused: Swift.Optional<String?> = nil, fairingsShip: Swift.Optional<String?> = nil, gridfins: Swift.Optional<String?> = nil, id: Swift.Optional<GraphQLID?> = nil, inclinationDeg: Swift.Optional<Double?> = nil, landSuccess: Swift.Optional<String?> = nil, landingIntent: Swift.Optional<String?> = nil, landingType: Swift.Optional<String?> = nil, landingVehicle: Swift.Optional<String?> = nil, launchDateLocal: Swift.Optional<String?> = nil, launchDateUtc: Swift.Optional<String?> = nil, launchSuccess: Swift.Optional<String?> = nil, launchYear: Swift.Optional<String?> = nil, legs: Swift.Optional<String?> = nil, lifespanYears: Swift.Optional<Double?> = nil, longitude: Swift.Optional<Double?> = nil, manufacturer: Swift.Optional<String?> = nil, meanMotion: Swift.Optional<Double?> = nil, missionId: Swift.Optional<String?> = nil, missionName: Swift.Optional<String?> = nil, nationality: Swift.Optional<String?> = nil, noradId: Swift.Optional<Int?> = nil, orbit: Swift.Optional<String?> = nil, payloadId: Swift.Optional<String?> = nil, payloadType: Swift.Optional<String?> = nil, periapsisKm: Swift.Optional<Double?> = nil, periodMin: Swift.Optional<Double?> = nil, raan: Swift.Optional<Double?> = nil, referenceSystem: Swift.Optional<String?> = nil, regime: Swift.Optional<String?> = nil, reused: Swift.Optional<String?> = nil, rocketId: Swift.Optional<String?> = nil, rocketName: Swift.Optional<String?> = nil, rocketType: Swift.Optional<String?> = nil, secondStageBlock: Swift.Optional<String?> = nil, semiMajorAxisKm: Swift.Optional<Double?> = nil, ship: Swift.Optional<String?> = nil, sideCore1Reuse: Swift.Optional<String?> = nil, sideCore2Reuse: Swift.Optional<String?> = nil, siteId: Swift.Optional<String?> = nil, siteNameLong: Swift.Optional<String?> = nil, siteName: Swift.Optional<String?> = nil, start: Swift.Optional<String?> = nil, tbd: Swift.Optional<String?> = nil, tentativeMaxPrecision: Swift.Optional<String?> = nil, tentative: Swift.Optional<String?> = nil) {
    graphQLMap = ["apoapsis_km": apoapsisKm, "block": block, "cap_serial": capSerial, "capsule_reuse": capsuleReuse, "core_flight": coreFlight, "core_reuse": coreReuse, "core_serial": coreSerial, "customer": customer, "eccentricity": eccentricity, "end": end, "epoch": epoch, "fairings_recovered": fairingsRecovered, "fairings_recovery_attempt": fairingsRecoveryAttempt, "fairings_reuse": fairingsReuse, "fairings_reused": fairingsReused, "fairings_ship": fairingsShip, "gridfins": gridfins, "id": id, "inclination_deg": inclinationDeg, "land_success": landSuccess, "landing_intent": landingIntent, "landing_type": landingType, "landing_vehicle": landingVehicle, "launch_date_local": launchDateLocal, "launch_date_utc": launchDateUtc, "launch_success": launchSuccess, "launch_year": launchYear, "legs": legs, "lifespan_years": lifespanYears, "longitude": longitude, "manufacturer": manufacturer, "mean_motion": meanMotion, "mission_id": missionId, "mission_name": missionName, "nationality": nationality, "norad_id": noradId, "orbit": orbit, "payload_id": payloadId, "payload_type": payloadType, "periapsis_km": periapsisKm, "period_min": periodMin, "raan": raan, "reference_system": referenceSystem, "regime": regime, "reused": reused, "rocket_id": rocketId, "rocket_name": rocketName, "rocket_type": rocketType, "second_stage_block": secondStageBlock, "semi_major_axis_km": semiMajorAxisKm, "ship": ship, "side_core1_reuse": sideCore1Reuse, "side_core2_reuse": sideCore2Reuse, "site_id": siteId, "site_name_long": siteNameLong, "site_name": siteName, "start": start, "tbd": tbd, "tentative_max_precision": tentativeMaxPrecision, "tentative": tentative]
  }

  public var apoapsisKm: Swift.Optional<Double?> {
    get {
      return graphQLMap["apoapsis_km"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "apoapsis_km")
    }
  }

  public var block: Swift.Optional<Int?> {
    get {
      return graphQLMap["block"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "block")
    }
  }

  public var capSerial: Swift.Optional<String?> {
    get {
      return graphQLMap["cap_serial"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cap_serial")
    }
  }

  public var capsuleReuse: Swift.Optional<String?> {
    get {
      return graphQLMap["capsule_reuse"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "capsule_reuse")
    }
  }

  public var coreFlight: Swift.Optional<Int?> {
    get {
      return graphQLMap["core_flight"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "core_flight")
    }
  }

  public var coreReuse: Swift.Optional<String?> {
    get {
      return graphQLMap["core_reuse"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "core_reuse")
    }
  }

  public var coreSerial: Swift.Optional<String?> {
    get {
      return graphQLMap["core_serial"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "core_serial")
    }
  }

  public var customer: Swift.Optional<String?> {
    get {
      return graphQLMap["customer"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customer")
    }
  }

  public var eccentricity: Swift.Optional<Double?> {
    get {
      return graphQLMap["eccentricity"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eccentricity")
    }
  }

  public var end: Swift.Optional<String?> {
    get {
      return graphQLMap["end"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end")
    }
  }

  public var epoch: Swift.Optional<String?> {
    get {
      return graphQLMap["epoch"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "epoch")
    }
  }

  public var fairingsRecovered: Swift.Optional<String?> {
    get {
      return graphQLMap["fairings_recovered"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fairings_recovered")
    }
  }

  public var fairingsRecoveryAttempt: Swift.Optional<String?> {
    get {
      return graphQLMap["fairings_recovery_attempt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fairings_recovery_attempt")
    }
  }

  public var fairingsReuse: Swift.Optional<String?> {
    get {
      return graphQLMap["fairings_reuse"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fairings_reuse")
    }
  }

  public var fairingsReused: Swift.Optional<String?> {
    get {
      return graphQLMap["fairings_reused"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fairings_reused")
    }
  }

  public var fairingsShip: Swift.Optional<String?> {
    get {
      return graphQLMap["fairings_ship"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fairings_ship")
    }
  }

  public var gridfins: Swift.Optional<String?> {
    get {
      return graphQLMap["gridfins"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gridfins")
    }
  }

  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var inclinationDeg: Swift.Optional<Double?> {
    get {
      return graphQLMap["inclination_deg"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "inclination_deg")
    }
  }

  public var landSuccess: Swift.Optional<String?> {
    get {
      return graphQLMap["land_success"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "land_success")
    }
  }

  public var landingIntent: Swift.Optional<String?> {
    get {
      return graphQLMap["landing_intent"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "landing_intent")
    }
  }

  public var landingType: Swift.Optional<String?> {
    get {
      return graphQLMap["landing_type"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "landing_type")
    }
  }

  public var landingVehicle: Swift.Optional<String?> {
    get {
      return graphQLMap["landing_vehicle"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "landing_vehicle")
    }
  }

  public var launchDateLocal: Swift.Optional<String?> {
    get {
      return graphQLMap["launch_date_local"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "launch_date_local")
    }
  }

  public var launchDateUtc: Swift.Optional<String?> {
    get {
      return graphQLMap["launch_date_utc"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "launch_date_utc")
    }
  }

  public var launchSuccess: Swift.Optional<String?> {
    get {
      return graphQLMap["launch_success"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "launch_success")
    }
  }

  public var launchYear: Swift.Optional<String?> {
    get {
      return graphQLMap["launch_year"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "launch_year")
    }
  }

  public var legs: Swift.Optional<String?> {
    get {
      return graphQLMap["legs"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "legs")
    }
  }

  public var lifespanYears: Swift.Optional<Double?> {
    get {
      return graphQLMap["lifespan_years"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lifespan_years")
    }
  }

  public var longitude: Swift.Optional<Double?> {
    get {
      return graphQLMap["longitude"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "longitude")
    }
  }

  public var manufacturer: Swift.Optional<String?> {
    get {
      return graphQLMap["manufacturer"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "manufacturer")
    }
  }

  public var meanMotion: Swift.Optional<Double?> {
    get {
      return graphQLMap["mean_motion"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mean_motion")
    }
  }

  public var missionId: Swift.Optional<String?> {
    get {
      return graphQLMap["mission_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mission_id")
    }
  }

  public var missionName: Swift.Optional<String?> {
    get {
      return graphQLMap["mission_name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mission_name")
    }
  }

  public var nationality: Swift.Optional<String?> {
    get {
      return graphQLMap["nationality"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nationality")
    }
  }

  public var noradId: Swift.Optional<Int?> {
    get {
      return graphQLMap["norad_id"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "norad_id")
    }
  }

  public var orbit: Swift.Optional<String?> {
    get {
      return graphQLMap["orbit"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orbit")
    }
  }

  public var payloadId: Swift.Optional<String?> {
    get {
      return graphQLMap["payload_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "payload_id")
    }
  }

  public var payloadType: Swift.Optional<String?> {
    get {
      return graphQLMap["payload_type"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "payload_type")
    }
  }

  public var periapsisKm: Swift.Optional<Double?> {
    get {
      return graphQLMap["periapsis_km"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "periapsis_km")
    }
  }

  public var periodMin: Swift.Optional<Double?> {
    get {
      return graphQLMap["period_min"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "period_min")
    }
  }

  public var raan: Swift.Optional<Double?> {
    get {
      return graphQLMap["raan"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "raan")
    }
  }

  public var referenceSystem: Swift.Optional<String?> {
    get {
      return graphQLMap["reference_system"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reference_system")
    }
  }

  public var regime: Swift.Optional<String?> {
    get {
      return graphQLMap["regime"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "regime")
    }
  }

  public var reused: Swift.Optional<String?> {
    get {
      return graphQLMap["reused"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reused")
    }
  }

  public var rocketId: Swift.Optional<String?> {
    get {
      return graphQLMap["rocket_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rocket_id")
    }
  }

  public var rocketName: Swift.Optional<String?> {
    get {
      return graphQLMap["rocket_name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rocket_name")
    }
  }

  public var rocketType: Swift.Optional<String?> {
    get {
      return graphQLMap["rocket_type"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rocket_type")
    }
  }

  public var secondStageBlock: Swift.Optional<String?> {
    get {
      return graphQLMap["second_stage_block"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "second_stage_block")
    }
  }

  public var semiMajorAxisKm: Swift.Optional<Double?> {
    get {
      return graphQLMap["semi_major_axis_km"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "semi_major_axis_km")
    }
  }

  public var ship: Swift.Optional<String?> {
    get {
      return graphQLMap["ship"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ship")
    }
  }

  public var sideCore1Reuse: Swift.Optional<String?> {
    get {
      return graphQLMap["side_core1_reuse"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "side_core1_reuse")
    }
  }

  public var sideCore2Reuse: Swift.Optional<String?> {
    get {
      return graphQLMap["side_core2_reuse"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "side_core2_reuse")
    }
  }

  public var siteId: Swift.Optional<String?> {
    get {
      return graphQLMap["site_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "site_id")
    }
  }

  public var siteNameLong: Swift.Optional<String?> {
    get {
      return graphQLMap["site_name_long"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "site_name_long")
    }
  }

  public var siteName: Swift.Optional<String?> {
    get {
      return graphQLMap["site_name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "site_name")
    }
  }

  public var start: Swift.Optional<String?> {
    get {
      return graphQLMap["start"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start")
    }
  }

  public var tbd: Swift.Optional<String?> {
    get {
      return graphQLMap["tbd"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tbd")
    }
  }

  public var tentativeMaxPrecision: Swift.Optional<String?> {
    get {
      return graphQLMap["tentative_max_precision"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tentative_max_precision")
    }
  }

  public var tentative: Swift.Optional<String?> {
    get {
      return graphQLMap["tentative"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tentative")
    }
  }
}

public final class FetchMissionsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query FetchMissions($find: LaunchFind, $sort: String, $limit: Int) {
      launchesPast(find: $find, sort: $sort, limit: $limit) {
        __typename
        rocket {
          __typename
          rocket_name
        }
        mission_name
        launch_year
      }
    }
    """

  public let operationName: String = "FetchMissions"

  public var find: LaunchFind?
  public var sort: String?
  public var limit: Int?

  public init(find: LaunchFind? = nil, sort: String? = nil, limit: Int? = nil) {
    self.find = find
    self.sort = sort
    self.limit = limit
  }

  public var variables: GraphQLMap? {
    return ["find": find, "sort": sort, "limit": limit]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("launchesPast", arguments: ["find": GraphQLVariable("find"), "sort": GraphQLVariable("sort"), "limit": GraphQLVariable("limit")], type: .list(.object(LaunchesPast.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(launchesPast: [LaunchesPast?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "launchesPast": launchesPast.flatMap { (value: [LaunchesPast?]) -> [ResultMap?] in value.map { (value: LaunchesPast?) -> ResultMap? in value.flatMap { (value: LaunchesPast) -> ResultMap in value.resultMap } } }])
    }

    public var launchesPast: [LaunchesPast?]? {
      get {
        return (resultMap["launchesPast"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [LaunchesPast?] in value.map { (value: ResultMap?) -> LaunchesPast? in value.flatMap { (value: ResultMap) -> LaunchesPast in LaunchesPast(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [LaunchesPast?]) -> [ResultMap?] in value.map { (value: LaunchesPast?) -> ResultMap? in value.flatMap { (value: LaunchesPast) -> ResultMap in value.resultMap } } }, forKey: "launchesPast")
      }
    }

    public struct LaunchesPast: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Launch"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("rocket", type: .object(Rocket.selections)),
          GraphQLField("mission_name", type: .scalar(String.self)),
          GraphQLField("launch_year", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(rocket: Rocket? = nil, missionName: String? = nil, launchYear: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Launch", "rocket": rocket.flatMap { (value: Rocket) -> ResultMap in value.resultMap }, "mission_name": missionName, "launch_year": launchYear])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var rocket: Rocket? {
        get {
          return (resultMap["rocket"] as? ResultMap).flatMap { Rocket(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "rocket")
        }
      }

      public var missionName: String? {
        get {
          return resultMap["mission_name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "mission_name")
        }
      }

      public var launchYear: String? {
        get {
          return resultMap["launch_year"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "launch_year")
        }
      }

      public struct Rocket: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchRocket"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("rocket_name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(rocketName: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchRocket", "rocket_name": rocketName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var rocketName: String? {
          get {
            return resultMap["rocket_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rocket_name")
          }
        }
      }
    }
  }
}
