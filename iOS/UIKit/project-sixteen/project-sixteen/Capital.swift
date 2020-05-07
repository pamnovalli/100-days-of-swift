//
//  capital.swift
//  project-sixteen
//
//  Created by Pamela Ianovalli on 06/05/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit
import MapKit
import UIKit

class Capital: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
    
    

}
