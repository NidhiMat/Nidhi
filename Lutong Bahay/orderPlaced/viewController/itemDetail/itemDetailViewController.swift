//
//  itemDetailViewController.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/20/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class itemDetailViewController: UIViewController {

    @IBOutlet weak var serverInformationTableView: UITableView!
    @IBOutlet weak var lblServiceOrderCount: LBLabel!
    
    var serviceOrderCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        serverInformationTableView.register(UINib(nibName: "serverInformationCell", bundle: nil), forCellReuseIdentifier: CellConstant.serverInformationCell)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    @IBAction func btnDecrement(_ sender: LBButton) {
        if serviceOrderCount != 0{
        serviceOrderCount = serviceOrderCount - 1
            lblServiceOrderCount.text = String(serviceOrderCount)
        }
    }
    
    @IBAction func btnIncrement(_ sender: LBButton) {
        serviceOrderCount = serviceOrderCount + 1
        lblServiceOrderCount.text = String(serviceOrderCount)
    }
    
    @IBAction func btnAddToTray(_ sender: LBButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentiferConstant.MyTray)as! myTrayViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
