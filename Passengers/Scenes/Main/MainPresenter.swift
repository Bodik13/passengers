//
//  MainPresenter.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/7/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

protocol MainPresenterInput {
    func didFetchPassengers(passengers: [Passenger])
}

class MainPresenter: NSObject {
    
    var viewController: MainViewControllerInput?
    var mainInteractor = MainInteractor()
    
}

extension MainPresenter: MainViewControllerOutput {
    
    func fetchPassengers(viewController: MainViewControllerInput) {
        self.viewController = viewController
        mainInteractor.fetchPassengers(output: self)
    }

}

extension MainPresenter: MainInteractorOutput {
    
    func didFetchPassengersInteractor(passengers: [Passenger]) {
        self.viewController?.displayPassengers(passengers: passengers)
    }
    
}
