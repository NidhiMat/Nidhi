//
//  ServedNearYouTableViewCell.swift
//  Lutong Bahay
//
//  Created by Amit Mathur on 19/02/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class ServedNearYouTableViewCell: UITableViewCell {

    @IBOutlet weak var estimateTimeLbl: LBLabel!
    @IBOutlet weak var deliveryTypeLbl: LBLabel!
    @IBOutlet weak var time: LBLabel!
    @IBOutlet weak var mealTypeLbl: UILabel!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var dishName: UILabel!
    @IBOutlet weak var ratingBtn: UIButton!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var distanceLbl: LBLabel!
    @IBOutlet weak var dishImage: LBImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
