//
//  ViewController.swift
//  iOS Maps
//
//  Created by Rob on 3/4/19.
//  Copyright © 2019 Rob. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cent = CLLocationCoordinate2DMake(35.709973, 139.731066) // Tokyo, Japan
        map.setRegion(MKCoordinateRegion(center: cent, latitudinalMeters: 10000, longitudinalMeters: 10000), animated: true)
        
        let loc1 = CLLocationCoordinate2DMake(35.709188, 139.720101)
        let pin1 = Pin(title: "Waseda", subtitle: "University located in Tokyo", coordinate: loc1)
        map.addAnnotation(pin1)

        let loc2 = CLLocationCoordinate2DMake(35.719002, 139.774465)
        let pin2 = Pin(title: "Ueno Park", subtitle: "A big park with a zoo", coordinate: loc2)
        map.addAnnotation(pin2)
        
        let loc3 = CLLocationCoordinate2DMake(35.681458, 139.766672)
        let pin3 = Pin(title: "Tokyo Station", subtitle: "One of the busiest train stations in Tokyo", coordinate: loc3)
        map.addAnnotation(pin3)
        
        let loc4 = CLLocationCoordinate2DMake(35.667516, 139.771126)
        let pin4 = Pin(title: "Tsukiji", subtitle: "The former location of a fish market, famous for its tuna auctions", coordinate: loc4)
        map.addAnnotation(pin4)
        
        let loc5 = CLLocationCoordinate2DMake(35.687877, 139.710557)
        let pin5 = Pin(title: "Shinjuku Gyoen", subtitle: "Another great park with gardens and plenty of fields", coordinate: loc5)
        map.addAnnotation(pin5)
        
        let loc6 = CLLocationCoordinate2DMake(35.659707, 139.745480)
        let pin6 = Pin(title: "Tokyo Tower", subtitle: "A famous red and white tower, iconic in the Tokyo skyline", coordinate: loc6)
        map.addAnnotation(pin6)
        
        let loc7 = CLLocationCoordinate2DMake(35.686688, 139.753126)
        let pin7 = Pin(title: "The Imperial Palace", subtitle: "The emperor lives here", coordinate: loc7)
        map.addAnnotation(pin7)
        
        
        let loc8 = CLLocationCoordinate2DMake(35.639686, 139.763398)
        let pin8 = Pin(title: "Rainbow Bridge", subtitle: "A colorfully illuminated bridge near Odaiba", coordinate: loc8)
        map.addAnnotation(pin8)
        
        let loc9 = CLLocationCoordinate2DMake(35.642744, 139.701946)
        let pin9 = Pin(title: "Meguro River", subtitle: "A popular spot for hanami", coordinate: loc9)
        map.addAnnotation(pin9)
        
        let loc10 = CLLocationCoordinate2DMake(35.648099, 139.703197)
        let pin10 = Pin(title: "Daikanyama", subtitle: "Great neighborhood with lots of shops and cafes", coordinate: loc10)
        map.addAnnotation(pin10)

    }
    
    func zoom(byFactor delta: Double) {
        var region: MKCoordinateRegion = self.map.region
        var span: MKCoordinateSpan = map.region.span
        span.latitudeDelta *= delta
        span.longitudeDelta *= delta
        region.span = span
        map.setRegion(region, animated: true)
    }
    
    // Zooms map in by a factor of 2
    @IBAction func zoomIn(_ sender: UIButton) {
        zoom(byFactor: 0.5)
    }
    
    @IBAction func zoomOut(_ sender: UIButton) {
        zoom(byFactor: 2.0)
    }
    
    
    @IBAction func changeViewType(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            map.mapType = .standard
        case 1:
            map.mapType = .hybrid
        default:
            break
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

