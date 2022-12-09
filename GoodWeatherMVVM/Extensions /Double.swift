//
//  Double.swift
//  GoodWeatherMVVM
//
//  Created by Baris on 29.11.2022.
//

import Foundation


extension Double {
    
    func formatAsDegree () -> String {
        return String(format: "%.0f", self)
    }
}
