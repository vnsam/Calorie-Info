//
//  ViewController.swift
//  Lifesum
//
//  Created by Vignesh on 11/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var infoView: CircleView!
    @IBOutlet weak var miniInfoStackView: UIStackView!
    
    internal var carbsView: MiniInfoView?
    internal var proteinView: MiniInfoView?
    internal var fatView: MiniInfoView?

    private var viewModel: HomeViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        _ = self.becomeFirstResponder()

        self.initializeViewModel()

        self.displayRandomFoodInfo()
    }

    override func becomeFirstResponder() -> Bool {
        return true
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            self.displayRandomFoodInfo()
        }
    }

    private func setupMiniViews() {
        self.carbsView = MiniInfoView.newInstance()
        self.proteinView = MiniInfoView.newInstance()
        self.fatView = MiniInfoView.newInstance()
    }

    private func initializeViewModel() {
        self.viewModel = HomeViewModel()
        self.viewModel?.setDelegate(self)
    }

    private func displayRandomFoodInfo() {
        self.fetchRandomFoodInfo()
    }

    private func fetchRandomFoodInfo() {
        let randomNumber = Int.random(in: Constants.FoodIdBound.lower...Constants.FoodIdBound.upper)

        self.viewModel?.fetchFoodInfoForId("\(randomNumber)")
    }
}

