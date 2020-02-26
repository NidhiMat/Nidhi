//
//  LBLocationDataViewController.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/18/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit
import CoreLocation

class LBLocationDataViewController: UIViewController, CLLocationManagerDelegate {
    
    // MARK: - Variables
    
    var locationManager = CLLocationManager()
    var currentLocation = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        startLocationTracking()
    }
    
    func showAlert(messageStr : String, titleStr : String){
        let alert = UIAlertController(title: titleStr, message: messageStr, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: - GetCurrentLocation
    
    func startLocationTracking() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            if CLLocationManager.locationServicesEnabled() {
                // 1. Compare the location manager authorization status
                switch CLLocationManager.authorizationStatus() {
                case .notDetermined:
                    locationManager.requestWhenInUseAuthorization()
                case  .restricted, .denied:
                    showAlert(messageStr: "The GPS is disabled, activate it and try again", titleStr: "Error")
                    break
                case .authorizedAlways, .authorizedWhenInUse:
                    startLocationUpdates()
                @unknown default:
                    break
                }
            } else {
                showAlert(messageStr: "Turn On Location Services to Allow \"Lutong Bahay App\" to Determine Your Location", titleStr: "Error")
            }
        }
        func startLocationUpdates() {
            locationManager.startUpdatingLocation()
    //        if !self.view.subviews.contains(self.viewLoading) {
    //            print("showing loader")
    //            showLoader()
    //        }
        }

        func stopLocationTracking() {
            locationManager.stopUpdatingLocation()
        }

        func convertLatLongToAddress(location : CLLocation){
            
            let geoCoder = CLGeocoder()
            geoCoder.reverseGeocodeLocation(location, completionHandler: { (placemarks, error) -> Void in
                
                // Place details
                var placeMark: CLPlacemark!
                placeMark = placemarks![0]
                UIApplication.shared.endIgnoringInteractionEvents()
                self.currentLocation =  "\(placeMark.name!)" + ", \(placeMark.subLocality!)" + ", \(placeMark.locality!)" + ", \(placeMark.administrativeArea!)" //+  ", \(placeMark.country!)" + ", \(placeMark.postalCode!)"
                print(self.currentLocation)
            })
        }

        func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
            // 1. Compare authorization status
            switch status {
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
            case .authorizedWhenInUse,
                 .authorizedAlways:
                startLocationUpdates()
            default:
                break
            }
        }

        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            guard let location = locations.last else {
                return
            }
            stopLocationTracking()
            convertLatLongToAddress(location : location)
        }
    
    

}
