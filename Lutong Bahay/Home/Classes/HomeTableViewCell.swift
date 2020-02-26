//
//  HomeTableViewCell.swift
//  Lutong Bahay
//
//  Created by Amit Mathur on 18/02/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var dishImage: LBImageView!
    
    @IBOutlet weak var dishNameLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    @IBOutlet weak var deliveryLbl: LBLabel!
    @IBOutlet weak var distanceLbl: LBLabel!
    @IBOutlet weak var minOrderLbl: UILabel!
    @IBOutlet weak var servingsLbl: UILabel!
    @IBOutlet weak var mealTypeLbl: UILabel!
    @IBOutlet weak var restNameLbl: UILabel!
    @IBOutlet weak var totalTime: LBLabel!
    @IBOutlet weak var totalNoOfLikesLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var ratingBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
