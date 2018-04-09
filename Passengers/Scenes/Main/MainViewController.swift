//
//  ViewController.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/7/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import UIKit

protocol MainViewControllerInput {
    func displayPassengers(passengers: [Passenger]?)
}

protocol MainViewControllerOutput {
    func fetchPassengers(viewController: MainViewControllerInput)
}

class MainViewController: UIViewController {
    
    @IBOutlet weak var passengersTableView: UITableView!
    
    var outputObject: MainViewControllerOutput = MainPresenter()
    var passengers: [Passenger]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.outputObject.fetchPassengers(viewController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passengers?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "reusedIdentifier")
        
        if let passenger = self.passengers?[indexPath.row] {
            cell.textLabel?.text = passenger.name
        }
        
        return cell
    }
}

extension MainViewController: MainViewControllerInput {
    
    func displayPassengers(passengers: [Passenger]?) {
        self.passengers = passengers
        self.passengersTableView.reloadData()
    }
    
}

