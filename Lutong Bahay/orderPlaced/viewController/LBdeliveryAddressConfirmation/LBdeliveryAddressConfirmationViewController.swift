//
//  LBdeliveryAddressConfirmationViewController.swift
//  Lutong Bahay
//
//  Created by System on 20/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class LBdeliveryAddressConfirmationViewController: LBBaseViewController {

    
    @IBOutlet var nameTextField: LBTextField!
    @IBOutlet var emailTextField: LBTextField!
    @IBOutlet var addressTextField: LBTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.attributedPlaceholder = NSAttributedString(string: "Full name",attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Email Address",attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        addressTextField.attributedPlaceholder = NSAttributedString(string: "e.g. Floor, unit number",attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
    }
    
    func validation(){
        if nameTextField.text == ""{
            showAlert(messageStr: kName, titleStr: kAlert)
        }
        else if emailTextField.text == ""{
            showAlert(messageStr: kEmailEmpty, titleStr: kAlert)
        }
        else if !(emailTextField.text!.isEmail){
            showAlert(messageStr: kEmailInvalid, titleStr: kAlert)
        }
        else if addressTextField.text == ""{
            showAlert(messageStr: kAddress, titleStr: kAlert)
        }
        else{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentiferConstant.confirmOrder)as! LBconfirmOrderViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func btnBack(_ sender: LBButton) {
        actionBackTapped()
    }
    
    @IBAction func btnSaveDetails(_ sender: LBButton) {
        validation()
    }
    
}
