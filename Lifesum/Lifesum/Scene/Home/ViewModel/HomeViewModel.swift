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
    private var worker: HomeWorker?
    private weak var delegate: HomeViewModelDelegate?

    init(worker: HomeWorker = HomeWorker()) {
        self.worker = worker
    }

    func setDelegate(_ delegate: HomeViewModelDelegate) {
        self.delegate = delegate
    }

    func fetchRandomFoodInfo() {
        let randomNumber = Int.random(in: Constants.FoodIdBound.lower...Constants.FoodIdBound.upper)
        fetchFoodInfoForId(randomNumber.description)
    }
    
    func fetchFoodInfoForId(_ id: String) {
        worker?.fetchFoodInfoForId(id) { (foodInfo) in
            guard let foodInfo = foodInfo else { return }
            
            self.delegate?.didReceiveFoodInfo(foodInfo)
        }
    }
}
