//
//  Weather.swift
//  RainyShinyCloudy
//
//  Created by Michael Mahon on 1/2/17.
//  Copyright © 2017 Michael Mahon. All rights reserved.
//

import Foundation

class Weather {
    
    func convertKelvinToFarenheit(kelvin: Double) -> Double {
        return Double(round(10 * (kelvin * (9/5) - 459.67)/10))
    }
}
