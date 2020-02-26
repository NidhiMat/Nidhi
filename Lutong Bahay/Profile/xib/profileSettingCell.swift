//
//  profileSettingCell.swift
//  Lutong Bahay
//
//  Created by System on 18/02/2020.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class profileSettingCell: UITableViewCell {

    
    @IBOutlet var profileSettingListLbl: LBLabel!
    
    @IBOutlet var profileSettingCellBtn: LBButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
