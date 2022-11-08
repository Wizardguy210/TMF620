//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** This represents a bundling pricing relationship, allowing a price to be composed of multiple other prices (e.g. a recurring charge and a onetime charge). */
public class BundledProductOfferingPriceRelationship: APIModel {

    /** When sub-classing, this defines the super-class */
    public var alphabaseType: String?

    /** A URI to a JSON-Schema file that defines additional attributes and relationships */
    public var alphaschemaLocation: URL?

    /** When sub-classing, this defines the sub-class Extensible name */
    public var alphatype: String?

    /** hyperlink reference of the bundled product offering price */
    public var href: String?

    /** Unique identifier of the bundled product offering price */
    public var id: String?

    /** Name of the bundled product offering price */
    public var name: String?

    public init(alphabaseType: String? = nil, alphaschemaLocation: URL? = nil, alphatype: String? = nil, href: String? = nil, id: String? = nil, name: String? = nil) {
        self.alphabaseType = alphabaseType
        self.alphaschemaLocation = alphaschemaLocation
        self.alphatype = alphatype
        self.href = href
        self.id = id
        self.name = name
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        alphabaseType = try container.decodeIfPresent("@baseType")
        alphaschemaLocation = try container.decodeIfPresent("@schemaLocation")
        alphatype = try container.decodeIfPresent("@type")
        href = try container.decodeIfPresent("href")
        id = try container.decodeIfPresent("id")
        name = try container.decodeIfPresent("name")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(alphabaseType, forKey: "@baseType")
        try container.encodeIfPresent(alphaschemaLocation, forKey: "@schemaLocation")
        try container.encodeIfPresent(alphatype, forKey: "@type")
        try container.encodeIfPresent(href, forKey: "href")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(name, forKey: "name")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? BundledProductOfferingPriceRelationship else { return false }
      guard self.alphabaseType == object.alphabaseType else { return false }
      guard self.alphaschemaLocation == object.alphaschemaLocation else { return false }
      guard self.alphatype == object.alphatype else { return false }
      guard self.href == object.href else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      return true
    }

    public static func == (lhs: BundledProductOfferingPriceRelationship, rhs: BundledProductOfferingPriceRelationship) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}