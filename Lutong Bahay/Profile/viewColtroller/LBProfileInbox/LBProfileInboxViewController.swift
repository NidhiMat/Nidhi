//
//  LBProfileInboxViewController.swift
//  Lutong Bahay
//
//  Created by System on 19/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class LBProfileInboxViewController: LBBaseViewController {

    @IBOutlet var LBProfileInboxTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LBProfileInboxTable.register(UINib(nibName: "profileInboxCell", bundle: nil), forCellReuseIdentifier: CellConstant.profileInboxCell)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    

    @IBAction func btnBack(_ sender: UIButton) {
        actionBackTapped()
    }

}
