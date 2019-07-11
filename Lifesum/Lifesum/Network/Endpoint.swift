//
//  Endpoint.swift
//  Lifesum
//
//  Created by Vignesh on 11/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

struct Endpoint {
    enum Scheme: String {
        case http
        case https
    }

    static let host = "api.lifesum.com"
    static let path = "/v2/foodipedia/codetest"

    struct QueryItemKey {
        static let foodId = "foodid"
    }
}

extension Endpoint {
    static var request: URLComponents? {
        var urlComponents = URLComponents()
        urlComponents.scheme = Endpoint.Scheme.https.rawValue
        urlComponents.host = Endpoint.host
        urlComponents.path = Endpoint.path
        return urlComponents
    }
}
