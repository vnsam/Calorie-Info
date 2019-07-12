//
//  Datagenerator.swift
//  LifesumTests
//
//  Created by Vignesh on 12/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

class DataGenerator {
    static func generate() -> Data? {
        let path = Bundle(for: DataGenerator.self).path(forResource: "foodInfo", ofType: "json")!
        guard let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
            return nil
        }
        return data
    }
}
