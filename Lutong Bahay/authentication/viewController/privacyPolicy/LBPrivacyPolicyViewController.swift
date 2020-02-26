//
//  LBPrivacyPolicyViewController.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/17/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class LBPrivacyPolicyViewController: LBBaseViewController {
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - IBAction
    
    @IBAction func btnBack(_ sender: UIButton) {
        actionBackTapped()
    }

    @IBAction func btnNext(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentiferConstant.searchLocation)as! LBSearchLocationViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
