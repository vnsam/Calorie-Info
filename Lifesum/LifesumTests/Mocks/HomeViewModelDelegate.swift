//
//  HomeViewModelDelegate.swift
//  LifesumTests
//
//  Created by Vignesh on 12/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation
@testable import Lifesum


class MockHomeViewModelDelegate: HomeViewModelDelegate {
    private(set) var didReceiveFoodInfoInvoked = false

    func didReceiveFoodInfo(_ foodInfo: FoodInfo) {
        self.didReceiveFoodInfoInvoked = true
    }
}
