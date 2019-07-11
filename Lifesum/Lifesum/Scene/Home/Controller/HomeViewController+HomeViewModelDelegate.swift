//
//  HomeViewController+HomeViewModelDelegate.swift
//  Lifesum
//
//  Created by Vignesh on 11/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation

extension HomeViewController: HomeViewModelDelegate {
    func didReceiveFoodInfo(_ foodInfo: FoodInfo) {
        self.refreshUIForFoodInfo(foodInfo)
    }

    private func refreshUIForFoodInfo(_ foodInfo: FoodInfo) {
        DispatchQueue.main.async {
            self.infoView.set(
                title: foodInfo.response.title,
                subTitle: "\(foodInfo.response.calories)",
                message: Constants.message
            )
        }
    }

    private func refreshMiniInfoView() {
        
    }
}
