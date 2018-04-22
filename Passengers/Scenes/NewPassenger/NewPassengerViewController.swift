//
//  NewPassengerViewController.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/22/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import UIKit

protocol NewPassengerViewControllerInput {
    func didAddPassenger(error: Error?)
}

protocol NewPassengerViewControllerOutput {
    func add(passenger: Passenger, viewController: NewPassengerViewControllerInput)
}

class NewPassengerViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    var outputObject: NewPassengerViewControllerOutput = NewPassengerPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        let passenger = Passenger(name: self.nameTextField.text, phoneNumber: self.phoneTextField.text)
        self.outputObject.add(passenger: passenger, viewController: self)
    }
}

extension NewPassengerViewController: NewPassengerViewControllerInput {
    
    func didAddPassenger(error: Error?) {
        
    }
    
}
