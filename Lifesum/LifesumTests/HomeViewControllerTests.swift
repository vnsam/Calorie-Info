//
//  HomeViewControllerTests.swift
//  LifesumTests
//
//  Created by Vignesh on 12/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import XCTest

@testable import Lifesum

class HomeViewControllerTests: XCTestCase {

    var sut: HomeViewController!

    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.sut = storyboard.instantiateViewController(withIdentifier: String.init(describing: HomeViewController.self)) as? HomeViewController

        _ = self.sut.view
    }

    override func tearDown() {
        super.tearDown()
        self.sut = nil
    }

    func testInfoView_Has_All_Subviews() {
        let subViews = self.sut.infoView.subviews

        XCTAssertEqual(4, subViews.count)
    }

    func testMiniStackView_Has_All_Subviews() {
        let subViews = self.sut.miniInfoStackView.subviews

        XCTAssertEqual(3, subViews.count)

        subViews.forEach{
            XCTAssertTrue($0 is MiniInfoView)
        }
    }
}
