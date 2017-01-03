//
//  Forecast.swift
//  RainyShinyCloudy
//
//  Created by Michael Mahon on 12/31/16.
//  Copyright © 2016 Michael Mahon. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    
    var _date: String!
    var _weatherType: String!
    var _highTemp: String!
    var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        let weather = Weather()
        
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            
            if let min = temp["min"] as? Double {
                self._lowTemp = "\(weather.convertKelvinToFarenheit(kelvin: min))"
            }
            
            if let max = temp["max"] as? Double {
                self._highTemp = "\(weather.convertKelvinToFarenheit(kelvin: max))"
            }
        }
        
        if let weatherConditions = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            
            if let main = weatherConditions[0]["main"] as? String {
                self._weatherType = main
            }
        }
        
        if let date = weatherDict["dt"] as? Double {
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
    }

}

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
