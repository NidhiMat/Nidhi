//
//  PalutoTableViewCell.swift
//  Lutong Bahay
//
//  Created by Amit Mathur on 18/02/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class PalutoTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var seeMoreBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
