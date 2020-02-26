//
//  PalutoDishesCollectionViewCell.swift
//  Lutong Bahay
//
//  Created by Amit Mathur on 18/02/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class PalutoDishesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var dishImage: LBImageView!
    
    @IBOutlet weak var preOrderBtn: LBButton!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var deliveryTypeLbl: LBLabel!
    @IBOutlet weak var availableLbl: LBLabel!
    @IBOutlet weak var distanceLbl: LBLabel!
    @IBOutlet weak var mealTypeLbl: UILabel!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var ratingBtn: UIButton!
    @IBOutlet weak var dishName: UILabel!
}
