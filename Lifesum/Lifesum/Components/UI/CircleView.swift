//
//  CircleView.swift
//  Test
//
//  Created by Vignesh on 11/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import UIKit

struct DefaultColor {
    static let topColor = UIColor(red: 243.0/255.0, green: 167.0 / 255.0, blue: 78.0 / 255.0, alpha: 1.0)
    static let bottomColor = UIColor(red: 237.0 / 255.0, green: 84.0 / 255.0, blue: 96.0 / 255.0, alpha: 1.0)
}

final class CircleView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!

    static func newInstance() -> CircleView {
        guard let view = UINib(
            nibName: "CircleView",
            bundle: nil)
            .instantiate(withOwner: nil, options: nil).first as? CircleView
        else {
            fatalError("Unable to get named nib")
        }

        return view
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)

        self.applyStyle()
        self.applyGradient()
    }

    private func applyStyle() {
        self.layer.cornerRadius = self.bounds.width / 2.0
    }

    private func applyGradient(colorAt top: UIColor = DefaultColor.topColor , bottom: UIColor = DefaultColor.bottomColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0.0, y: 0.0, width: self.bounds.width, height: self.bounds.height)
        gradientLayer.cornerRadius = self.bounds.width / 2.0
        gradientLayer.colors = [top.cgColor, bottom.cgColor]
        gradientLayer.locations = [0.0, 1.0]

        self.layer.insertSublayer(gradientLayer, at: 0)
    }

    func set(title: String, subTitle: String, message: String) {
        self.titleLabel.text = title
        self.subtitleLabel.text = subTitle
        self.messageLabel.text = message
    }
}
