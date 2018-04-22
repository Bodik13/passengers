//
//  NewPassengerPresenter.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/22/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

protocol NewPassengerInput {
    func didAddPassenger(error: Error?)
}

class NewPassengerPresenter {
    
    var viewController: NewPassengerViewControllerInput?
    var mainInteractor = NewPassengerInteractor()
    
}

extension NewPassengerPresenter: NewPassengerViewControllerOutput {
    
    func add(passenger: Passenger, viewController: NewPassengerViewControllerInput) {
        self.viewController = viewController
        mainInteractor.add(passenger: passenger, output: self)
    }
    
}

extension NewPassengerPresenter: NewPassengerInteractorOutput {
    
    func didAddPassenger(error: Error?) {
        self.viewController?.didAddPassenger(error: error)
    }
    
}
