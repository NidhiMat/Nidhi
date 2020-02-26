//
//  LBProfileMessageViewController.swift
//  Lutong Bahay
//
//  Created by System on 19/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class LBProfileMessageViewController: LBBaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func btnBack(_ sender: UIButton) {
        actionBackTapped()
    }
}
