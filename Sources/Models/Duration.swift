//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A time interval in a given unit of time */
public class Duration: APIModel {

    /** Time interval (number of seconds, minutes, hours, etc.) */
    public var amount: Int?

    /** Unit of time (seconds, minutes, hours, etc.) */
    public var units: String?

    public init(amount: Int? = nil, units: String? = nil) {
        self.amount = amount
        self.units = units
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        amount = try container.decodeIfPresent("amount")
        units = try container.decodeIfPresent("units")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(amount, forKey: "amount")
        try container.encodeIfPresent(units, forKey: "units")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Duration else { return false }
      guard self.amount == object.amount else { return false }
      guard self.units == object.units else { return false }
      return true
    }

    public static func == (lhs: Duration, rhs: Duration) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}