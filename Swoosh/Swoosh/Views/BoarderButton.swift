//
//  BoarderButton.swift
//  Swoosh
//
//  Created by lebose on 2020/03/19.
//  Copyright © 2020 lebose. All rights reserved.
//

import UIKit

class BoarderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1.0
        layer.borderColor =
            UIColor.white.cgColor
    }

}
