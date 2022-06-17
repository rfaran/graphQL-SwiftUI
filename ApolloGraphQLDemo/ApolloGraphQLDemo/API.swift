// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class CountryListQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query CountryList {
      countries {
        __typename
        name
        capital
        currency
        emoji
        languages {
          __typename
          name
        }
      }
    }
    """

  public let operationName: String = "CountryList"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("countries", type: .nonNull(.list(.nonNull(.object(Country.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(countries: [Country]) {
      self.init(unsafeResultMap: ["__typename": "Query", "countries": countries.map { (value: Country) -> ResultMap in value.resultMap }])
    }

    public var countries: [Country] {
      get {
        return (resultMap["countries"] as! [ResultMap]).map { (value: ResultMap) -> Country in Country(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Country) -> ResultMap in value.resultMap }, forKey: "countries")
      }
    }

    public struct Country: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Country"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("capital", type: .scalar(String.self)),
          GraphQLField("currency", type: .scalar(String.self)),
          GraphQLField("emoji", type: .nonNull(.scalar(String.self))),
          GraphQLField("languages", type: .nonNull(.list(.nonNull(.object(Language.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String, capital: String? = nil, currency: String? = nil, emoji: String, languages: [Language]) {
        self.init(unsafeResultMap: ["__typename": "Country", "name": name, "capital": capital, "currency": currency, "emoji": emoji, "languages": languages.map { (value: Language) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var capital: String? {
        get {
          return resultMap["capital"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "capital")
        }
      }

      public var currency: String? {
        get {
          return resultMap["currency"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "currency")
        }
      }

      public var emoji: String {
        get {
          return resultMap["emoji"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "emoji")
        }
      }

      public var languages: [Language] {
        get {
          return (resultMap["languages"] as! [ResultMap]).map { (value: ResultMap) -> Language in Language(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Language) -> ResultMap in value.resultMap }, forKey: "languages")
        }
      }

      public struct Language: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Language"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Language", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}
