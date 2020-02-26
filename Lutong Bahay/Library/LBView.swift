//
//  LBView.swift
//  Lutong Bahay
//
//  Created by Amit Mathur on 13/02/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit
@IBDesignable
class LBView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.setNeedsLayout()
            self.layoutIfNeeded()
        }
    }
    
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
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
            self.setNeedsLayout()
            self.layoutIfNeeded()
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
            self.setNeedsLayout()
            self.layoutIfNeeded()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        var radius: CGFloat = 0.0
        if cornerRadius != 0 {
            radius = cornerRadius
        } else if cicular {
            radius = self.bounds.size.width / 2.0
        } else if leftRight {
            radius = self.bounds.size.height / 2.0
        }
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }

}
