//
//  WeatherModel.swift
//  Clima
//
//  Created by Vladimeri Dolidze on 03.04.24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation


struct WeatherModel {
    let conditionId:Int
    let temp:Double
    let cityName:String
    
    
    var contiditionName:String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    
    var temperatureString:String {
        return String(format: "%.1f", temp)
    }
    
}
