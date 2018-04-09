//
//  MainInteractor.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/7/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

protocol MainInteractorInput {
    func fetchPassengers(output: MainInteractorOutput)
}

protocol MainInteractorOutput {
    func didFetchPassengersInteractor(passengers: [Passenger]?)
}

class MainInteractor {
    
    let passengersRepository = PassengersRepository(dataStoreProvider: PassengersDataStoreProvider.self)
}

extension MainInteractor: MainInteractorInput {
    
    func fetchPassengers(output: MainInteractorOutput) {
        passengersRepository.getAllPassengers { (passengers, error) in
            output.didFetchPassengersInteractor(passengers: passengers)
        }
        
    }
    
}
