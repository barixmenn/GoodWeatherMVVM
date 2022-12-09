//
//  ListViewCell.swift
//  GoodWeatherMVVM
//
//  Created by Baris on 29.11.2022.
//

import Foundation
import UIKit

class ListViewCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(_ vm: WeatherViewModel) {
        self.cityNameLabel.text = vm.city
        self.temperatureLabel.text = "\(vm.temperature.formatAsDegree())"
    }
}
