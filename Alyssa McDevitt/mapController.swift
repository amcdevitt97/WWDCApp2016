//
//  map.swift
//  Alyssa McDevitt
//
//  Created by Alyssa McDevitt on 2/15/16.
//  Copyright © 2016 Alyssa McDevitt. All rights reserved.
//
import Foundation
import UIKit
import MapKit
import CoreLocation
class mapController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{
    
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        print("working")
        super.viewDidLoad()
        //locationManager()
        
        
        
        let locations = [
            ["title": "Lyndhurst, NJ",    "latitude": 40.8120, "longitude": -74.1243],
            ["title": "Houston, TX", "latitude": 29.7604, "longitude": -95.3698],
            ["title": "Singapore City, SG, IN",     "latitude": 1.290270, "longitude": 103.851959],
            ["title": "Chester, NJ",     "latitude": 40.7653, "longitude": -74.6986],
            ["title": "Riyadh, Saudi Arabia", "latitude": 24.7136, "longitude": 46.6753],
            ["title": "Manchester, UK", "latitude": 53.4808, "longitude": -2.2426],
            ["title": "Cypress, CA", "latitude": 33.8170, "longitude": -118.0373],
            ["title": "Koto-ku, Tokyo, Japan", "latitude": 35.6729, "longitude": 139.8174],
            ["title": "Calgary, Alberta, Canada", "latitude": 51.0486, "longitude": -114.0708],
            ["title": "Catalonia, Spain", "latitude": 41.5912, "longitude": 1.5209],
            ["title": "Mexico City, Mexico", "latitude": 19.4326, "longitude": -99.1332],
        ]
        
        
        for location in locations {
            let annotation = MKPointAnnotation()
            annotation.title = location["title"] as? String
            annotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! Double, longitude: location["longitude"] as! Double)
            map.addAnnotation(annotation)
        }
        
        let centeredLocation = CLLocationCoordinate2D(
            latitude: 16.40,
            longitude: -86.34
        )
        let span = MKCoordinateSpanMake(111, 111)
        let region = MKCoordinateRegion(center: centeredLocation, span: span)
        map.setRegion(region, animated: true)
        map.mapType = MKMapType.Satellite;
    }
    
    
    private func camera() {
        map.camera.altitude = 1400
        map.camera.pitch = 50
        map.camera.heading = 180
    }
        
       
}

