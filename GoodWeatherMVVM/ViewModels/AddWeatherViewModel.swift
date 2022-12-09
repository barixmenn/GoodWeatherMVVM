//
//  AddWeatherViewModel.swift
//  GoodWeatherMVVM
//
//  Created by Baris on 29.11.2022.
//

import Foundation

struct AddWeatherViewModel {
    
    func addWeather(for city: String, completion:  @escaping (WeatherViewModel) -> Void) {
        let weatherURL = Contants.Urls.urlForWeatherByCity(city: city)
        
        let weatherResource = Resource<WeatherResponse> (url: weatherURL) { data in
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            return weatherResponse
        }
        
        WebService().load(resource: weatherResource) { result in
            if let weatherResource = result {
                let vm = WeatherViewModel(weather: weatherResource)
                completion(vm)
            }
        }
    }
}
