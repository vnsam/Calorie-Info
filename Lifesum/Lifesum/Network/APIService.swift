//
//  APIService.swift
//  Lifesum
//
//  Created by Vignesh on 11/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

class APIService {
    func executeRequest(_ urlRequest: URLRequest, completion: @escaping CompletionBlock) {
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in

            debugPrint("--> Data task complete, sending completion")

            completion(data, response, error)
        }
        dataTask.resume()
    }
}
