//
//  String.swift
//  GoodWeatherMVVM
//
//  Created by Baris on 29.11.2022.
//

import Foundation


// A function we created to skip the space when we write a city with two names
extension String {
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
