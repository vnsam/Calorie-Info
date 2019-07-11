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

            self.refreshMiniInfoViewForFoodInfo(foodInfo)
        }
    }

    private func refreshMiniInfoViewForFoodInfo(_ foodInfo: FoodInfo) {
        self.carbsView?.set(title: "carbs".uppercased(), value: "\(foodInfo.response.carbs)%")
        self.proteinView?.set(title: "protein".uppercased(), value: "\(foodInfo.response.protein)%")
        self.fatView?.set(title: "fat".uppercased(), value: "\(foodInfo.response.fat)%")
    }
}
