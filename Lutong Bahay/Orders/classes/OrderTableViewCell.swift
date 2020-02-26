//
//  OrderTableViewCell.swift
//  Lutong Bahay
//
//  Created by Amit Mathur on 25/02/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class OrderTableViewCell: UITableViewCell {

    @IBOutlet weak var statusLbl: UILabel!
    @IBOutlet weak var totalPriceLbl: LBLabel!
    @IBOutlet weak var trayQuantityLbl: LBLabel!
    @IBOutlet weak var transactionIdLbl: LBLabel!
    @IBOutlet weak var serverLbl: LBLabel!
    @IBOutlet weak var dateLbl: LBLabel!
    @IBOutlet weak var orderNoLbl: LBLabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
