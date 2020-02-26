//
//  LBProfileFavoritesView+TableView.swift
//  Lutong Bahay
//
//  Created by System on 19/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit



extension LBProfileFavoritesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellConstant.profileFavoritesCell, for: indexPath) as! profileFavoritesCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 182
    }
}
