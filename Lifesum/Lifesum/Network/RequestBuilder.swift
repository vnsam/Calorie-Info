//
//  RequestBuilder.swift
//  Lifesum
//
//  Created by Vignesh on 11/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

struct RequestBuilder {
    static func buildRequest(forFoodId id: String) -> URLRequest? {
        guard var urlComponents = Endpoint.request else { return nil }

        urlComponents.queryItems = [
            URLQueryItem(
                name: Endpoint.QueryItemKey.foodId,
                value: id),
        ]

        guard let url = urlComponents.url else { return nil }

        var urlRequest = URLRequest(url: url)
        urlRequest.setValue(Constants.authKey, forHTTPHeaderField: Constants.HeaderKey.authorization)

        return urlRequest
    }
}
