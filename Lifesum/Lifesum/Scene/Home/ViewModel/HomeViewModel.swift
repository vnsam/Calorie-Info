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
    private(set) weak var delegate: HomeViewModelDelegate?

    init(worker: HomeWorker = HomeWorker()) {
        self.worker = worker
    }

    func setDelegate(_ delegate: HomeViewModelDelegate) {
        self.delegate = delegate
    }

    func fetchFoodInfoForId(_ id: String) {
        worker?.fetchFoodInfoForId(id) { (foodInfo) in
            guard let foodInfo = foodInfo else { return }

            self.delegate?.didReceiveFoodInfo(foodInfo)
        }
    }
}
