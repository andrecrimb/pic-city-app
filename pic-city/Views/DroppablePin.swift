//
//  DroppablePin.swift
//  pic-city
//
//  Created by André Rosa on 03/05/2018.
//  Copyright © 2018 Andre Rosa. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
