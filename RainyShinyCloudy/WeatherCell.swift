//
//  WeatherCell.swift
//  RainyShinyCloudy
//
//  Created by Michael Mahon on 1/2/17.
//  Copyright © 2017 Michael Mahon. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var weatherTypeLbl: UILabel!
    @IBOutlet weak var weatherImg: UIImageView!
    @IBOutlet weak var maxTempLbl: UILabel!
    @IBOutlet weak var minTempLbl: UILabel!
    
    func configureCell(forecast: Forecast) {
        minTempLbl.text = forecast.lowTemp
        maxTempLbl.text = forecast.highTemp
        dayLbl.text = forecast.date
        weatherTypeLbl.text = forecast.weatherType
        weatherImg.image = UIImage(named: forecast.weatherType)
    }
}
