//
//  LBconfirmOrderViewController.swift
//  Lutong Bahay
//
//  Created by System on 20/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class LBconfirmOrderViewController: LBBaseViewController {

    @IBOutlet var confirmOrderTableView: UITableView!
    
    var RadioBtnImages = ["Rectangle Yellow","Rectangle White"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confirmOrderTableView.register(UINib(nibName: "confirmOrderCell", bundle: nil), forCellReuseIdentifier: CellConstant.ConformOrderCell)
    
     AppDelegate.sharedInstance.deliveryMode.removeAll()
               let deliveryObj1 = deliveryModeObj(delivery: "", pickUp: "")
               AppDelegate.sharedInstance.deliveryMode.append(deliveryObj1)
               let deliveryObj2 = deliveryModeObj(delivery: "", pickUp: "")
               AppDelegate.sharedInstance.deliveryMode.append(deliveryObj2)
           }
           
           func GenerateTags(row : Int, number : Int) -> Int {
             
               return (row * 100) + number
           }
           
           func ReloadSpecificRow(row : Int , section : Int){

           let selectedIndexPath = IndexPath(item: row , section: section)
           confirmOrderTableView.reloadRows(at: [selectedIndexPath], with: .none)

           }
           
           @objc func SelectDeliveryMode(sender: UIButton) {
                 
                 let lastnumber = Int(String(sender.tag).suffix(1))
                    
                    if(String(sender.tag).count == 1){
                        if lastnumber == 1 {
                           AppDelegate.sharedInstance.deliveryMode[0].delivery = "For Delivery"
                        }
                        else if lastnumber == 2 {
                           AppDelegate.sharedInstance.deliveryMode[0].delivery = "For Pickup"
                     }
                         ReloadSpecificRow(row: 0, section: 0)
                    }
                     
                    else {
                     
                     let index  = Int(String(sender.tag).prefix(1))
                     
                     for i in 0..<AppDelegate.sharedInstance.deliveryMode.count {
                         
                         if i == index {
                             if lastnumber == 1{
                                 AppDelegate.sharedInstance.deliveryMode[i].delivery = "For Delivery"
                             }
                             else if lastnumber == 2 {
                                 AppDelegate.sharedInstance.deliveryMode[i].delivery =  "For Pickup"
                             }
                         }
                     }
                     
                     ReloadSpecificRow(row: index ?? 0, section: 0)
                 }
                 
             }
    
    @IBAction func btnBack(_ sender: LBButton) {
        actionBackTapped()
    }
    
    @IBAction func btnBuyNow(_ sender: LBButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentiferConstant.paymentMethod)as! LBpaymentMethodViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
