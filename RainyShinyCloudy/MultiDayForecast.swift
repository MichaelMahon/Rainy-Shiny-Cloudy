//
//  MultiDayForecast.swift
//  RainyShinyCloudy
//
//  Created by Michael Mahon on 1/2/17.
//  Copyright © 2017 Michael Mahon. All rights reserved.
//

import UIKit
import Alamofire

class MultiDayForecast {
    
    var forecast = [Forecast]()

    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        //Alamofire download
        //let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        Alamofire.request(FORCAST_WEATHER_URL).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let list = dict["list"] as? [Dictionary<String, AnyObject>] {
                    for obj in list {
                        let newForecast = Forecast(weatherDict: obj)
                        self.forecast.append(newForecast)
                    }
                }
            }
            
            completed()
        }
    }
    
    
}
