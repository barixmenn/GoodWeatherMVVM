//
//  WebService.swift
//  GoodWeatherMVVM
//
//  Created by Baris on 28.11.2022.
//

import Foundation

struct Resource <T> {
    let url : URL
    let parse : (Data) -> T?
    
}

final class WebService {
    
    func load<T>(resource : Resource<T>, completion: @escaping (T?) -> ()) {
        
        URLSession.shared.dataTask(with: resource.url) { data, _ , error in
            
            print(data)
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            }else {
                print(error)
            }
        }.resume()
    }
}
