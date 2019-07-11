//
//  HomeWorker.swift
//  Lifesum
//
//  Created by Vignesh on 11/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

class HomeWorker {
    func fetchFoodInfoForId(_ id: String, completion: @escaping (FoodInfo?) -> Void) {
        guard let request = RequestBuilder.buildRequest(forFoodId: id) else { return }

        let apiService = APIService()
        apiService.executeRequest(request) { (data, response, error) in
            guard let data = data else {
                completion(nil)
                return
            }

            let foodInfo = self.parseFoodInfoFromData(data)
            completion(foodInfo)
        }
    }

    private func parseFoodInfoFromData(_ data: Data) -> FoodInfo? {
        do {
            return try JSONDecoder().decode(FoodInfo.self, from: data)
        } catch {
            print(error)
            return nil
        }
    }
}
