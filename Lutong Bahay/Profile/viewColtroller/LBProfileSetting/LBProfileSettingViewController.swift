//
//  LBProfileSettingViewController.swift
//  Lutong Bahay
//
//  Created by System on 18/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class LBProfileSettingViewController: LBBaseViewController {

    @IBOutlet var LBProfileSettingTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LBProfileSettingTable.register(UINib(nibName: "profileSettingCell", bundle: nil), forCellReuseIdentifier: CellConstant.profileSettingCell)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    @IBAction func btnBack(_ sender: UIButton) {
        actionBackTapped()
    }
}
