//
//  Contants.swift
//  GoodWeatherMVVM
//
//  Created by Baris on 29.11.2022.
//

import Foundation


struct Contants {
    struct Urls {
        static func urlForWeatherByCity(city: String) -> URL {
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=b51176feec12b869e43bf478a977b378&units=imperial")!
        }
    }
}
