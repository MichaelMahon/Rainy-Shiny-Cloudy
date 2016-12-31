//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Michael Mahon on 12/31/16.
//  Copyright © 2016 Michael Mahon. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATTITUDE = "lat="
let LONGITUDE = "&lon="
let API_KEY = "&apikey=e04b8a4ea2837054aea1654011f71449"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATTITUDE)-37\(LONGITUDE)121\(API_KEY)"

