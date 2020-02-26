//
//  LBSearchLocationView+TableView.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/17/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

extension LBSearchLocationViewController :  UITableViewDelegate, UITableViewDataSource{
    
    // MARK: - UITableView Delegate and Data Source Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.searchLocationTableView.dequeueReusableCell(withIdentifier: CellConstant.locationCell) as! locationCell
        cell.lblAddress.text = AppDelegate.sharedInstance.Location.currentLocation
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
