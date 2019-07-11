//
//  MiniInfoView.swift
//  Test
//
//  Created by Vignesh on 11/07/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import UIKit

class MiniInfoView: UIView {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!

    static func newInstance() -> MiniInfoView {
        guard let view = UINib(
            nibName: "MiniInfoView", bundle: nil
        )
        .instantiate(withOwner: nil, options: nil)
        .first as? MiniInfoView else {
            fatalError("Unable to load named nib")
        }

        return view
    }

    func set(title: String, value: String) {
        self.titleLabel.text = title
        self.valueLabel.text = value
    }
}
