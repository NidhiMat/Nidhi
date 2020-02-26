//
//  LBpaymentMethodViewController.swift
//  Lutong Bahay
//
//  Created by System on 20/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class LBpaymentMethodViewController: LBBaseViewController {

    @IBOutlet weak var btnCashMode: LBButton!
    @IBOutlet weak var btnGCash: LBButton!
    @IBOutlet weak var btnCoinsPH: LBButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnBack(_ sender: LBButton) {
        actionBackTapped()
    }
    
    @IBAction func btnSelectPaymentMode(_ sender: LBButton) {
        
        if sender.tag == 101{
            btnCashMode.isSelected = true
            btnGCash.isSelected = false
            btnCoinsPH.isSelected = false
        }
        else if sender.tag == 102{
            btnGCash.isSelected = true
            btnCashMode.isSelected = false
            btnCoinsPH.isSelected = false
        }
        else {
            btnCoinsPH.isSelected = true
            btnCashMode.isSelected = false
            btnGCash.isSelected = false
            
        }
        
    }
    
    @IBAction func btnPayNow(_ sender: LBButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentiferConstant.orderPlaced)as! LBorderPlacedViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
