//
//  LBBaseViewController.swift
//  Lutong Bahay
//
//  Created by Amit Mathur on 13/02/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit
import CoreLocation

class LBBaseViewController: UIViewController, UIGestureRecognizerDelegate, CLLocationManagerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = Constants.Colors.kApp_BackgroundColor
        addTapGesture()
    }
     override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            //self.automaticallyAdjustsScrollViewInsets = false
            
            setBackButton()
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            disablePopGestureForViewControllers()
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
        // MARK: - Status bar
        
        override var preferredStatusBarStyle: UIStatusBarStyle {
            return .default
        }
    
    public final class ObjectAssociation<T: AnyObject> {
        
        private let policy: objc_AssociationPolicy
        
        /// - Parameter policy: An association policy that will be used when linking objects.
        public init(policy: objc_AssociationPolicy = .OBJC_ASSOCIATION_RETAIN_NONATOMIC) {
            
            self.policy = policy
        }
        
        /// Accesses associated object.
        /// - Parameter index: An object whose associated object is to be accessed.
        public subscript(index: AnyObject) -> T? {
            
            get { return objc_getAssociatedObject(index, Unmanaged.passUnretained(self).toOpaque()) as! T? }
            set { objc_setAssociatedObject(index, Unmanaged.passUnretained(self).toOpaque(), newValue, policy) }
        }
    }
        
        
        // MARK: - UIGestureRecognizerDelegate
        
        public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
        
        // MARK: - Popgesture
        
        func disablePopGestureForViewControllers() {
            if let count = self.navigationController?.viewControllers.count {
                if count > 1 {
                    // Enable at all other pages
                    self.navigationController?.interactivePopGestureRecognizer?.delegate = self
                    self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
                } else {
                    self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
                    self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
                }
            }
            
        }
        
        // MARK: - Back Button
        
        func setBackButton() {
            
            self.navigationItem.hidesBackButton = true
            
            self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
            
            removeLeftBarButton()
            
           
        }
        
        func setBackButtonWithImageName(imageName: String) {
//            let barButton = UIBarButtonItem(image: UIImage(named:imageName), style: .plain, target: self, action: #selector(LBBaseViewController.actionBackTapped))
//            self.navigationItem.leftBarButtonItem = barButton
        }
        
        func setMenuButtonWithImageName(imageName: String) {
//            let barButton = UIBarButtonItem(image: UIImage(named:imageName), style: .plain, target: self, action: #selector(LBBaseViewController.actionMenuTapped))
//            self.navigationItem.leftBarButtonItem = barButton
        }
        
        func setLeftBarButtonWithTitle(title:String, imageName: String) {
//            let leftBarBtn = FTButton()
//            leftBarBtn.setImage(UIImage(named: imageName), for: UIControl.State())
//            leftBarBtn.setTitle(title, for: .normal)
//            leftBarBtn.titleLabel?.textColor = UIColor.white
//            leftBarBtn.titleLabel?.font = FTFontManager.appFontWithName(fontName: FTFonts.kAvenir_Medium, size: 18.0)
//            leftBarBtn.frame = CGRect(x: 0, y: 0, width: Constants.ScreenSize.SCREEN_WIDTH, height: 25)
//            leftBarBtn.spacingBetweenImageAndTitle = 11.5
//            leftBarBtn.contentHorizontalAlignment = .left
//
//            leftBarBtn.imageView?.contentMode = .scaleAspectFit
//            leftBarBtn.addTarget(self, action: #selector(actionBackTapped), for: .touchUpInside)
//
//            let leftBarButtonItem = UIBarButtonItem()
//            leftBarButtonItem.customView = leftBarBtn
//
//            self.navigationItem.leftBarButtonItem = leftBarButtonItem
        }
        
        func removeLeftBarButton() {
            self.navigationItem.leftBarButtonItem = nil
        }
        
        @objc func actionBackTapped() {
            self.navigationController?.popViewController(animated: true)
        }
    
        @objc func actionMenuTapped() {
//            if let hostVC = appDel.window?.rootViewController as? FTHostViewController {
//                hostVC.showSideMenu()
//            }
        }
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
    
    func hideKeyboard()
       {
           let tap: UITapGestureRecognizer = UITapGestureRecognizer(
               target: self,
               action: #selector(dismissKeyboard))
           
           view.addGestureRecognizer(tap)
       }
       
       
       
       func showAlert(messageStr : String, titleStr : String){
           
           let alert = UIAlertController(title: titleStr, message: messageStr, preferredStyle: UIAlertController.Style.alert)
           alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
           self.present(alert, animated: true, completion: nil)
       }
    
    func showAlertWithAction(title: String?,
                             message: String?,
                             actionTitles:[String?],
                             actions:[((UIAlertAction) -> Void)?]) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for (index, title) in actionTitles.enumerated() {
            let action = UIAlertAction(title: title, style: .default, handler: actions[index])
            alert.addAction(action)
        }
        present(alert, animated: true, completion: nil)
        
    }
       
       

        // MARK: - Tap Gesture
        
        func addTapGesture() {
//            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(LBBaseViewController.resign))
//            tapGesture.cancelsTouchesInView = false
//            self.view.addGestureRecognizer(tapGesture)
        }
        
        @objc func resign() {
            self.view.endEditing(true)
        }
        
        // MARK: - Navigation Title
        
        func setNavigationTitle(_ title: String) {
//            let label = UILabel(frame: CGRect(x: 50.0, y: 0.0, width: Constants.ScreenSize.SCREEN_WIDTH - 100.0, height: 44.0))
//            label.backgroundColor = UIColor.clear
//            label.numberOfLines = 2
//            label.textAlignment = NSTextAlignment.center
//            label.text = title
//            label.textColor = UIColor.white
//            label.minimumScaleFactor = 0.5
//            label.font = FTFontManager.appFontWithName(fontName: FTFonts.kAvenir_Medium, size: 18.0)
//            self.navigationItem.titleView = label
        }
    
    
}
