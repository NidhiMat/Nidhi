//
//  LBWelcomeScreenViewController.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/17/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class LBWelcomeScreenViewController: LBBaseViewController {
    
    // MARK: - IBOutlet

    @IBOutlet weak var imgCountryFlag: UIImageView!
    @IBOutlet weak var lblCountryCode: UILabel!
    @IBOutlet weak var tfMobileNumber: UITextField!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppDelegate.sharedInstance.Location.startLocationTracking()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: - IBAction
    
    @IBAction func btnNext(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentiferConstant.registration)as! LBRegisterationViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnSkip(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: StoryBoardConstant.search, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: ControllerIdentiferConstant.SearchByMap)as! searchByMapViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}




