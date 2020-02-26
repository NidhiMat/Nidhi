//
//  LBconfirmOrderView+TableView.swift
//  Lutong Bahay
//
//  Created by System on 20/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

extension LBconfirmOrderViewController: UITableViewDataSource, UITableViewDelegate {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellConstant.ConformOrderCell, for: indexPath) as! confirmOrderCell
        cell.btnDelivery.tag = GenerateTags(row: indexPath.row, number: 1)
        cell.btnPickUp.tag = GenerateTags(row: indexPath.row, number: 2)
        cell.btnDelivery.addTarget(self, action: #selector(SelectDeliveryMode(sender:)), for: .touchUpInside)
        cell.btnPickUp.addTarget(self, action: #selector(SelectDeliveryMode(sender:)), for: .touchUpInside)
        
        
        let obj = AppDelegate.sharedInstance.deliveryMode[indexPath.row]
                
                   if( obj.delivery == "For Delivery"){
                       cell.btnDelivery.setBackgroundImage(UIImage(named : RadioBtnImages[0]), for: .normal) //setImage(UIImage(named : RadioBtnImages[0]), for: .normal)
                       cell.btnPickUp.setBackgroundImage(UIImage(named : RadioBtnImages[1]), for: .normal) //setImage(UIImage(named : RadioBtnImages[1]), for: .normal)
                   }
                       
                   else if (obj.delivery == "For Pickup"){
                       
                       cell.btnDelivery.setBackgroundImage(UIImage(named : RadioBtnImages[1]), for: .normal) //setImage(UIImage(named : RadioBtnImages[1]), for: .normal)
                       cell.btnPickUp.setBackgroundImage(UIImage(named : RadioBtnImages[0]), for: .normal) //setImage(UIImage(named : RadioBtnImages[0]), for: .normal)
                   }
                   else {
                       cell.btnDelivery.setBackgroundImage(UIImage(named : RadioBtnImages[1]), for: .normal) //setImage(UIImage(named : RadioBtnImages[1]), for: .normal)
                       cell.btnPickUp.setBackgroundImage(UIImage(named : RadioBtnImages[1]), for: .normal) //setImage(UIImage(named : RadioBtnImages[1]), for: .normal)
                   }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
