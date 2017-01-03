//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Michael Mahon on 12/31/16.
//  Copyright © 2016 Michael Mahon. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let MODE = "&mode=json"
let LATTITUDE = "lat=\(Location.sharedInstance.latitude!)"
let LONGITUDE = "&lon=\(Location.sharedInstance.longitude!)"
let COUNT = "&cnt=16"
let API_KEY = "&apikey=e04b8a4ea2837054aea1654011f71449"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATTITUDE)\(LONGITUDE)\(API_KEY)"

let FORCAST_WEATHER_URL = "\(FORECAST_URL)\(LATTITUDE)\(LONGITUDE)\(COUNT)\(MODE)\(API_KEY)"
