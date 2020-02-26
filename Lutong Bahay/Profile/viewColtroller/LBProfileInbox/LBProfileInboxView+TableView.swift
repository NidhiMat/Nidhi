//
//  LBProfileInboxView+TableView.swift
//  Lutong Bahay
//
//  Created by System on 19/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

extension LBProfileInboxViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellConstant.profileInboxCell, for: indexPath) as! profileInboxCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 63
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: ControllerIdentiferConstant.ProfileMessage)as! LBProfileMessageViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
