//
//  confirmOrderTableViewCell.swift
//  Lutong Bahay
//
//  Created by System on 20/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class confirmOrderCell: UITableViewCell {
    
    @IBOutlet weak var btnDelivery: LBButton!
    @IBOutlet weak var btnPickUp: LBButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
