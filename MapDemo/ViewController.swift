//
//  ViewController.swift
//  MapDemo
//
//  Created by otet_tud on 1/9/20.
//  Copyright © 2020 otet_tud. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Define Latitude and Longitude of a specific location ex. Toronto
        let latidude : CLLocationDegrees = 43.64
        let longitude: CLLocationDegrees = -79.38

        // Define the Deltas of Latitude and Longitude
        let latDelta : CLLocationDegrees = 0.05
        let longDelta : CLLocationDegrees = 0.05
        
        // Define the Span
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        // Define the location
        let location = CLLocationCoordinate2D(latitude: latidude, longitude: longitude)
        
        // Define the region
        let region = MKCoordinateRegion(center: location, span: span)
        
        // Set MapView with the set region
        mapView.setRegion(region, animated: true)
        
        // PIN Location: Add annotation
        let annotation = MKPointAnnotation()
        annotation.title = "Toronto City"
        annotation.subtitle = "This is my location"
        annotation.coordinate = location
        mapView.addAnnotation(annotation)
    }
}

