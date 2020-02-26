//
//  LBImageView.swift
//  Lutong Bahay
//
//  Created by Amit Mathur on 13/02/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit
@IBDesignable
class LBImageView: UIImageView {

    @IBInspectable var leftRight: Bool = false {
        didSet {
            self.setNeedsLayout()
            self.layoutIfNeeded()
        }
    }
    
    @IBInspectable var cicular: Bool = false {
        didSet {
            self.setNeedsLayout()
            self.layoutIfNeeded()
        }
    }
    @IBInspectable var roundedRect: Bool = false {
        didSet {
            self.setNeedsLayout()
            self.layoutIfNeeded()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        var radius: CGFloat = 0.0
        if cicular {
            radius = self.bounds.size.width / 2.0
        } else if leftRight {
            self.roundCorners([.topLeft, .topRight], radius: 10)
        } else if roundedRect {
            radius = self.bounds.size.width / 8.0
        }
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }

}

