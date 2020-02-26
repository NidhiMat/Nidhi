//
//  searchByMapViewController.swift
//  Lutong Bahay
//
//  Created by bd01 on 2/18/20.
//  Copyright © 2020 Nidhi Mathur. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class CustomPointAnnotation: MKPointAnnotation {
var pinCustomImageName:String!
}

class searchByMapViewController: UIViewController , MKMapViewDelegate , CLLocationManagerDelegate{
    
    // MARK: - IBOutlet

    @IBOutlet weak var lblLocation: LBLabel!
    @IBOutlet weak var searchItemCollectionView: UICollectionView!
    @IBOutlet weak var MapView: MKMapView!
    
    let locationManager = CLLocationManager()
    var pointAnnotation:CustomPointAnnotation!
    var pinAnnotationView:MKPinAnnotationView!
    
 //   let annotation = MKPointAnnotation()
    let locations = [
        ["title": "1",     "latitude": 26.3427, "longitude": 73.0443],
        ["title": "2",     "latitude": 26.3129, "longitude": 73.0997],
        ["title": "3",     "latitude": 26.2262, "longitude": 72.9612]
    ]
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.requestWhenInUseAuthorization()
        
        searchItemCollectionView.register(UINib(nibName: "PalutoDishesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: CellConstant.PalutoDishesCell)
        lblLocation.text = AppDelegate.sharedInstance.Location.currentLocation
        setLocation()
        
        if CLLocationManager.locationServicesEnabled() {
                  locationManager.delegate = self
                  locationManager.desiredAccuracy = kCLLocationAccuracyBest
                  locationManager.startUpdatingLocation()
              }
              
              MapView.mapType = .standard
              MapView.isZoomEnabled = true
              MapView.isScrollEnabled = true
              
              if let coor = MapView.userLocation.location?.coordinate{
                  MapView.setCenter(coor, animated: true)
              }
        
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    //MARK: - Functions
    
    func setLocation(){
        
        self.MapView.removeAnnotations(MapView.annotations)
        
        for location in locations {
//                      let annotation = MKPointAnnotation()
//                      annotation.title = location["title"] as? String
//                      annotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! Double, longitude: location["longitude"] as! Double)
            
            pointAnnotation = CustomPointAnnotation()
//            pointAnnotation.pinCustomImageName = "20170308_1626332"
//            pointAnnotation.title = location["title"] as? String
//            pointAnnotation.subtitle = "Pick up some Food"
            pointAnnotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! Double, longitude: location["longitude"] as! Double)
            pinAnnotationView = MKPinAnnotationView(annotation: pointAnnotation, reuseIdentifier: "pin")
            MapView.addAnnotation(pinAnnotationView.annotation!)
        }
    }
    
    
    //MARK: - Custom Annotation
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let reuseIdentifier = "pin"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseIdentifier)
        
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseIdentifier)
            annotationView?.canShowCallout = true
        } else {
            annotationView?.annotation = annotation
        }
        
        //  let customPointAnnotation = annotation as! CustomPointAnnotation
        //  annotationView?.image = UIImage(named: customPointAnnotation.pinCustomImageName)
        
        let customView = (Bundle.main.loadNibNamed("customMapPin", owner: self, options: nil))?[0] as! customMapPin
        let calloutViewFrame = customView.frame
        //  calloutViewFrame.origin = CGPoint(x:-calloutViewFrame.size.width/2 + 30,y: -calloutViewFrame.size.height)
        customView.frame = calloutViewFrame
        annotationView?.addSubview(customView)
        
        return annotationView
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = CLLocationCoordinate2D(latitude: 26.3427, longitude: 73.0443)
        let locValue:CLLocationCoordinate2D = location
        MapView.mapType = MKMapType.standard
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: locValue, span: span)
        MapView.setRegion(region, animated: true)
        locationManager.stopUpdatingLocation()
        
    }
    @IBAction func btnBack(_ sender: LBButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


