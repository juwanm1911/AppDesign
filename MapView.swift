//
//  MapView.swift
//  0.2.0
//
//  Created by Ryan Leroux on 3/30/18.
//  Copyright © 2018 Ryan Leroux. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class MapView: UIViewController, CLLocationManagerDelegate {

    //node title
    var nodetitle = String()
    
    //Map
    @IBOutlet weak var Map: MKMapView!
    
    //Location Manager
    var locationManager: CLLocationManager = CLLocationManager()
    
    //Current Location variable
    var currentLoc: CLLocation!
    
    //menu's constraint
    @IBOutlet weak var MenuConstraint: NSLayoutConstraint!
    
    //is menu hidden
    var isHidden = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //start of code
        
        //width of menu - this keeps it hidden
        MenuConstraint.constant = -141
        
        //sets the accuracy
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        
        //Request Authorization
        locationManager.requestWhenInUseAuthorization()
        
        //Start location update
        locationManager.startUpdatingLocation()
        
        //Set Up Mapview
        Map.showsUserLocation = true //shows user location
        currentLoc = locationManager.location //variable to hold current location
        let lat:CLLocationDegrees = 0.1 //latitude
        let lon:CLLocationDegrees = 0.1 //longitude
        let span = MKCoordinateSpanMake(lat, lon) 
        let location = CLLocationCoordinate2DMake(currentLoc.coordinate.latitude, currentLoc.coordinate.longitude)
        let region = MKCoordinateRegionMake(location, span)
        Map.setRegion(region, animated: false)
        Map.mapType = MKMapType(rawValue: 0)!
        Map.userTrackingMode = MKUserTrackingMode(rawValue: 1)!
        Map.isScrollEnabled = false; //can't scroll around map
        Map.isZoomEnabled = false; //stops zooming in/out
        Map.isRotateEnabled = false; //stops rotating
        
        if(nodetitle != "")
        {
            DropPin(title: nodetitle)
        }
        
    }

    func DropPin(title: String)
    {
        
        let pin = MKPointAnnotation(); //creates pin
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(currentLoc.coordinate.latitude, currentLoc.coordinate.longitude)
        pin.coordinate = location; //sets pin location
        pin.title = nodetitle //adds title
        self.Map.addAnnotation(pin); //shows pin on map
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //slides the menu tab
    @IBAction func MenuPressed(_ sender: UIBarButtonItem)
    {
        if(isHidden)
        {
            MenuConstraint.constant = 0
        }
        else
        {
            MenuConstraint.constant = -141
        }
        isHidden = !isHidden
    }
    
    
    
    
    
    
    
    //Sign Out button pressed - leave or code freaks out
    @IBAction func SignOut(_ sender: UIButton)
    {
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
