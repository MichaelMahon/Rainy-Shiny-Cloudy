//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Michael Mahon on 1/3/17.
//  Copyright © 2017 Michael Mahon. All rights reserved.
//

import CoreLocation

class Location {
    
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
