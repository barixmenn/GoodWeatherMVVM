//
//  AddWeatherViewController.swift
//  GoodWeatherMVVM
//
//  Created by Baris on 27.11.2022.
//

import UIKit

protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {

    @IBOutlet weak var cityNameTextField: UITextField!
    
    var delegate : AddWeatherDelegate?
    
    private var addWeatherVM = AddWeatherViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view.
    }
    

    
     @IBAction func addLocationPressed(_ sender: UIButton) {
         
         if let city = cityNameTextField.text {
             
             addWeatherVM.addWeather(for: city) { (vm) in
                 self.delegate?.addWeatherDidSave(vm: vm)
                 self.dismiss(animated: true, completion: nil)
             }
             
         }
       
         
     }
     
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
