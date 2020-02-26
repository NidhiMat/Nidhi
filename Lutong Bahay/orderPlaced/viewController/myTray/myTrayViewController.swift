//
//  myTrayViewController.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/20/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class myTrayViewController: LBBaseViewController {

    @IBOutlet weak var myTrayTableView: UITableView!
    @IBOutlet weak var locationView: UIView!
    var currenttag = Int()
    var RadioBtnImages = ["Rectangle Yellow","Rectangle White"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        myTrayTableView.register(UINib(nibName: "orderSummaryCell", bundle: nil), forCellReuseIdentifier: CellConstant.OrderSummaryCell)
        let customView = Bundle.main.loadNibNamed("myLocation", owner: self, options: nil)?.first as? myLocation
        locationView.addSubview(customView!)
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
    myTrayTableView.reloadRows(at: [selectedIndexPath], with: .none)

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
    
    @IBAction func btnAddMoreDetails(_ sender: LBButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentiferConstant.deliveryAddressConfirmation)as! LBdeliveryAddressConfirmationViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnCancel(_ sender: LBButton) {
        actionBackTapped()
    }
}
