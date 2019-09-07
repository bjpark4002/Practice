//
//  ViewController.swift
//  Current_Location
//
//  Created by Bumjin Park on 9/7/19.
//  Copyright © 2019 Bumjin Park. All rights reserved.
//



import UIKit
import CoreLocation // to use location,
                    // must add "Privacy - Location When In Use Usage Description" as a key in info.plist file.


class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var latitude: UITextField!
    @IBOutlet weak var longitude: UITextField!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization() //  alert for users to get permission
        
        if CLLocationManager.locationServicesEnabled(){ //suppose user allowed app to use location.
            locationManager.startUpdatingLocation()
        }
        
        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let userlocation = locations.first{
            latitude.text = "\(userlocation.coordinate.latitude)"
            longitude.text = "\(userlocation.coordinate.longitude)"
        
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        latitude.text = "Error : \(error)"
        longitude.text = "Error : \(error)"
    }


}

