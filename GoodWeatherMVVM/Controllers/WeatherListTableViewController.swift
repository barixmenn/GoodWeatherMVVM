//
//  WeatherListTableViewController.swift
//  GoodWeatherMVVM


import UIKit

class WeatherListTableViewController: UITableViewController {

    private var weatherListViewModel = WeatherListViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weatherListViewModel.numberOfRows(section)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as! ListViewCell

        let weatherVM = weatherListViewModel.modelAt(indexPath.row)
        cell.configure(weatherVM)
        return cell

        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "weatherCell" {
            prepareSegueForAddWeatherCityViewController(segue: segue)
        }
        
    }
    
    func prepareSegueForAddWeatherCityViewController(segue: UIStoryboardSegue) {
        
        guard let nav = segue.destination as? UINavigationController else {
            fatalError("NavigationController not found")
        }
        
        guard let addWeatherCityVC = nav.viewControllers.first as? AddWeatherCityViewController else {
            fatalError("AddWeatherCityController not found")
        }
        
        addWeatherCityVC.delegate = self
    }
    
    
}


extension WeatherListTableViewController : AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel) {
        addWeatherDidSave(vm: vm)
        self.tableView.reloadData()
    }
    
    
}
