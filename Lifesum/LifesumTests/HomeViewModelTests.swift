//
//  HomeViewModelTests.swift
//  LifesumTests
//
//  Created by Vignesh on 12/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import XCTest

@testable import Lifesum

class HomeViewModelTests: XCTestCase {

    var sut: HomeViewModel!
    var delegate: MockHomeViewModelDelegate!

    override func setUp() {
        super.setUp()

        let workerMock = HomeWorkerMock()
        self.sut = HomeViewModel(worker: workerMock)

        self.delegate = MockHomeViewModelDelegate()

        self.sut.setDelegate(self.delegate)
    }

    override func tearDown() {
        super.tearDown()

        self.sut = nil
    }

    func testDelegateCall_When_Successfully_Fetched_FoodInfo() {
        self.sut.fetchFoodInfoForId("200")

        let expectation = self.expectation(description: "Wait for delegate completion call back")

        XCTAssertTrue(self.delegate.didReceiveFoodInfoInvoked)

        expectation.fulfill()

        self.waitForExpectations(timeout: 1.0, handler: nil)
    }
}
