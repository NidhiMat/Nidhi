//
//  LBRegisterationViewController.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/17/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class LBRegisterationViewController: LBBaseViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var imgCountryFlag: UIImageView!
    @IBOutlet weak var lblCountryCode: UILabel!
    @IBOutlet weak var tfMobileNumber: UITextField!
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
    }
    
    // MARK: - Functions
    
    func validation(){
        if tfMobileNumber.text == ""{
            showAlert(messageStr: "Mobile Number Can't be Empty", titleStr: "Alert")
        }
        else if tfMobileNumber.text?.count != 10{
            showAlert(messageStr: "Enter Valid Mobile Number", titleStr: "Alert")
        }
        else{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentiferConstant.privacyPolicy)as! LBPrivacyPolicyViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    
    // MARK: - IBAction

    @IBAction func btnBack(_ sender: UIButton) {
        actionBackTapped()
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        validation()
    }
   
    @IBAction func btnOrderPlacedStoryBoard(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: StoryBoardConstant.orderPlaced, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: ControllerIdentiferConstant.ItemDetail)as! itemDetailViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
