//
//  HomeViewModel.swift
//  Lifesum
//
//  Created by Vignesh on 11/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

protocol HomeViewModelDelegate: class {
    func didReceiveFoodInfo(_ foodInfo: FoodInfo)
}

class HomeViewModel {
    private(set) weak var delegate: HomeViewModelDelegate?

    func setDelegate(_ delegate: HomeViewModelDelegate) {
        self.delegate = delegate
    }

    func fetchFoodInfoForId(_ id: String) {
        let worker = HomeWorker()
        worker.fetchFoodInfoForId(id) { (foodInfo) in
            guard let foodInfo = foodInfo else { return }

            self.delegate?.didReceiveFoodInfo(foodInfo)
        }
    }
}
