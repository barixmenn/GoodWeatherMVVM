//
//  WeatherResponse.swift
//  GoodWeatherMVVM
//
//  Created by Baris on 28.11.2022.
//

import Foundation

struct WeatherResponse : Decodable {
    let name : String
    let main : Weather
}

struct Weather: Decodable {
    let temp : Double
    let humidity: Double
}
