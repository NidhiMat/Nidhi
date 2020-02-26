//
//  GlobalConstant.swift


import Foundation
import UIKit
let appDel = UIApplication.shared.delegate as! AppDelegate

struct Constants {
    
    struct ScreenRatio {
        static let DEFAULT_SCREEN_RATIO: CGFloat = 375.0
        static let SCREEN_WIDTH_RATIO: CGFloat = UIScreen.main.bounds.size.width/375.0
        static let SCREEN_HEIGHT_RATIO: CGFloat = UIScreen.main.bounds.size.height/667.0
    }
    
    struct ScreenSize {
        static let SCREEN_WIDTH = UIScreen.main.bounds.size.width
        static let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    }
    
    struct Colors {
        static let kApp_BackgroundColor = #colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)
        static let primaryRedColor = #colorLiteral(red: 0.9254901961, green: 0, blue: 0, alpha: 1)
        static let darkRedColor = #colorLiteral(red: 0.6274509804, green: 0, blue: 0, alpha: 1)
        static let surfaceColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        static let orangeColor = #colorLiteral(red: 1, green: 0.5215686275, blue: 0, alpha: 1)
        static let textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        static let kTextField_PlaceholderColor = #colorLiteral(red: 0.8274509804, green: 0.8274509804, blue: 0.8274509804, alpha: 1)
    }
    
}
