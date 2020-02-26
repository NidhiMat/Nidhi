//
//  itemDetailViewController+TableView.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/20/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

extension itemDetailViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 1
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = self.serverInformationTableView.dequeueReusableCell(withIdentifier: CellConstant.serverInformationCell) as! serverInformationCell
           return cell
       }
       
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return UITableView.automaticDimension
       }
}
