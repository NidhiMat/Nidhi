//
//  LBProfileFavoritesViewController.swift
//  Lutong Bahay
//
//  Created by System on 19/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class LBProfileFavoritesViewController: LBBaseViewController {

    
    @IBOutlet var LBProfileFavoritesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LBProfileFavoritesTable.register(UINib(nibName: "profileFavoritesCell", bundle: nil), forCellReuseIdentifier: CellConstant.profileFavoritesCell)
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func btnBack(_ sender: UIButton) {
        actionBackTapped()
    }

}
