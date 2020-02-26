//
//  storyBoardConstant.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/17/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import Foundation

struct StoryBoardConstant {
    
    static let authentication                   = "Authentication"
    static let search                           = "Search"
    static let profile                          = "profile"
    static let orderPlaced                      = "orderPlaced"
}

struct ControllerIdentiferConstant {
    
    // Authentication
    static let welcomeScreen                    = "VC_WelcomeScreen"
    static let registration                     = "VC_Registration"
    static let privacyPolicy                    = "VC_PrivacyPolicy"
    static let searchLocation                   = "VC_SearchLocation"
    
    // Search
    static let SearchByMap                      = "VC_SearchByMap"
    
    // Profile
    static let ProfileSetting                   = "VC_LBProfileSetting"
    static let ProfileFavorites                 = "VC_LBProfileFavorites"
    static let ProfileInbox                     = "VC_LBProfileInbox"
    static let ProfileMessage                   = "VC_LBProfileMessage"
    
    // Order Placed
    static let ItemDetail                       = "VC_ItemDetail"
    static let MyTray                           = "VC_MyTray"
    static let deliveryAddressConfirmation      = "VC_LBdeliveryAddressConfirmation"
    static let confirmOrder                     = "VC_LBconfirmOrder"
    static let paymentMethod                    = "VC_LBpaymentMethod"
    static let orderPlaced                      = "VC_LBorderPlaced"
}

struct CellConstant {
    
    // Authentication
    static let locationCell                     = "cell_location"
    
    // Search
    static let PalutoDishesCell                 = "Cell_PalutoDishes"
    
    // Profile
    static let profileSettingCell               = "Cell_profileSettingCell"
    static let profileInboxCell                 = "Cell_profileInboxCell"
    static let profileFavoritesCell             = "Cell_profileFavoritesCell"
    
    // Order Placed
    static let serverInformationCell            = "Cell_ServerInformation"
    static let ConformOrderCell                 = "Cell_ConformOrder"
    static let OrderSummaryCell                 = "Cell_OrderSummary"
    
}
