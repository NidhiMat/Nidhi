//
//  LBSearchLocationViewController.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/17/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit

class LBSearchLocationViewController: LBBaseViewController {
    
    // MARK: - IBOutlet

    @IBOutlet weak var searchLocationTableView: UITableView!
    @IBOutlet weak var tfSearchBar: UITextField!
    
    // MARK: - Variables
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
        searchLocationTableView.register(UINib(nibName: "locationCell", bundle: nil), forCellReuseIdentifier: CellConstant.locationCell)
        tfSearchBar.attributedPlaceholder = NSAttributedString(string: "Search Address",attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
    }
    
    // MARK: - IBAction

    @IBAction func btnBack(_ sender: UIButton) {
        actionBackTapped()
    }
    @IBAction func btnUseThisAddress(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: StoryBoardConstant.profile, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: ControllerIdentiferConstant.ProfileSetting)as! LBProfileSettingViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}





//        searchBar.backgroundImage = UIImage()
