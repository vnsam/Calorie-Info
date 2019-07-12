//
//  HomeWorkerMock.swift
//  LifesumTests
//
//  Created by Vignesh on 12/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

@testable import Lifesum

class HomeWorkerMock: HomeWorker {
    override func fetchFoodInfoForId(_ id: String, completion: @escaping (FoodInfo?) -> Void) {
        guard let data = DataGenerator.generate(),
        let foodInfo = try? JSONDecoder().decode(FoodInfo.self, from: data) else {
            completion(nil)
            return
        }

        completion(foodInfo)
    }
}
