//
//  UIButtonWithRoundedCorners.swift
//  Calculator4
//
//  Created by Vera Braginets on 29/05/2021.
//

import Foundation
import UIKit

class ButtonWithRoundedCorners: UIButton {
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 0
           self.clipsToBounds = true
       }
}
