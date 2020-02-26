//
//  LBTextField.swift
//  Lutong Bahay
//
//  Created by Amit Mathur on 13/02/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit
@IBDesignable
class LBTextField: UITextField, UITextFieldDelegate {

    let paddingLeftAlignment = UIEdgeInsets(top: 0, left: 18, bottom: 0, right: 0)
    let paddingCenterAlignment = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    
    @IBInspectable var allowedCharacters: String = "" {
        didSet {
            
        }
    }
    
    @IBInspectable var maxLength: Int = Int(INT_MAX) {
        didSet {
            
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = true
            self.layoutIfNeeded()
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
            self.layoutIfNeeded()
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
            self.layoutIfNeeded()
        }
    }
    
    var characterSet: CharacterSet?
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        if self.textAlignment != .center {
            return bounds.inset(by: paddingLeftAlignment)
        } else {
            return bounds.inset(by: paddingCenterAlignment)
        }
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        if self.textAlignment != .center {
            return bounds.inset(by: paddingLeftAlignment)
        } else {
            return bounds.inset(by: paddingCenterAlignment)
        }
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        if self.textAlignment != .center {
            return bounds.inset(by: paddingLeftAlignment)
        } else {
            return bounds.inset(by: paddingCenterAlignment)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.tintColor = self.textColor!
        self.delegate = self
        
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes:[NSAttributedString.Key.foregroundColor: Constants.Colors.kTextField_PlaceholderColor])
    }
    
    // MARK: - UITextField Delegate
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newLength = textField.text!.count + string.count - range.length
        
        if newLength <= maxLength {
            
            if characterSet != nil {
                
                let arrfiltered = string.components(separatedBy: characterSet!.inverted) as NSArray
                
                let filtered = arrfiltered.componentsJoined(by: "")
                
                return string == filtered
            } else if allowedCharacters == "" {
                // Default. All characters are allowed.
                return true
            } else {
                
                let cs = CharacterSet(charactersIn: allowedCharacters).inverted
                
                let arrfiltered = string.components(separatedBy: cs) as NSArray
                
                let filtered = arrfiltered.componentsJoined(by: "")
                
                return string == filtered
            }
        } else {
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
      //  textField.text = textField.text?.trimmedString()
    }
}


