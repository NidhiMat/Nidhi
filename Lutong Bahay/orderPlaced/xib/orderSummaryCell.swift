//
//  orderSummaryCell.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/21/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class orderSummaryCell: UITableViewCell {

    @IBOutlet weak var btnDelivery: LBButton!
    @IBOutlet weak var btnPickUp: LBButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
