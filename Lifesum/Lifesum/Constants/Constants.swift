//
//  Constants.swift
//  Lifesum
//
//  Created by Vignesh on 11/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

typealias CompletionBlock = (_ result: Data?, _ response: URLResponse?, _ error: Error?) -> Void

struct Constants {
    static let authKey = "23863708:465c0554fd00da006338c72e282e939fe6576a25fd00c776c0fbe898c47c9876"

    struct HeaderKey {
        static let authorization = "Authorization"
    }

    struct FoodIdBound {
        static let lower = 1
        static let upper = 200
    }

    static let message = "Calories per serving"
}
