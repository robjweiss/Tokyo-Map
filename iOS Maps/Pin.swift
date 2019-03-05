//
//  Pin.swift
//  iOS Maps
//
//  Created by Rob on 3/4/19.
//  Copyright © 2019 Rob. All rights reserved.
//

import MapKit

// A pin for the map
class Pin: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(title: String, subtitle: String,coordinate: CLLocationCoordinate2D){
        
        self.title=title
        self.subtitle=subtitle
        self.coordinate=coordinate
        
    }
    
}
