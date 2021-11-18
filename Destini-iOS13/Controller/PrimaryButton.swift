//
//  PrimaryButton.swift
//  Destini-iOS13
//
//  Created by Santiago Jaramillo on 11/18/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class PrimaryButton: UIButton {
     
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = 25
        self.imageView?.clipsToBounds = true
    }
}
