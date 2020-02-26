//
//  LBProfileSettingView+TableView.swift
//  Lutong Bahay
//
//  Created by System on 18/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

var profileSettingArray = ["Favorite Dishes","Message and Notifications","To Review","Change Password"]

extension LBProfileSettingViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileSettingArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellConstant.profileSettingCell, for: indexPath) as! profileSettingCell
        cell.profileSettingListLbl.text = profileSettingArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 59
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentiferConstant.ProfileFavorites)as! LBProfileFavoritesViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.row == 1{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentiferConstant.ProfileInbox)as! LBProfileInboxViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
