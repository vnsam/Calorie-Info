//
//  FoodInfo.swift
//  Lifesum
//
//  Created by Vignesh on 11/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

struct FoodInfo: Codable {
    let meta: Meta
    let response: Response
}

struct Meta: Codable {
    let code: Int
}

struct Response: Codable {
    let carbs: Double
    let title: String
    let calories, fat: Double
    let protein: Double
}
