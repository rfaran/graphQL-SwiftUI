//
//  Apollo.swift
//  ApolloGraphQLDemo
//
//  Created by Faran Rasheed on 6/18/22.
//

import Foundation
import Apollo

class Apollo {
    static let shared = Apollo()
    lazy var client = ApolloClient(url: URL(string: "https://countries.trevorblades.com")!)
}
