//
//  NewPassengerInteractor.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/22/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

protocol NewPassengerInteractorInput {
    func add(passenger: Passenger, output: NewPassengerInteractorOutput)
}

protocol NewPassengerInteractorOutput {
    func didAddPassenger(error: Error?)
}

class NewPassengerInteractor {
    
    let passengersRepository = PassengersRepository(dataStoreProvider: PassengersDataStoreProvider())
    
}

extension NewPassengerInteractor: NewPassengerInteractorInput {
    
    func add(passenger: Passenger, output: NewPassengerInteractorOutput) {
        passengersRepository.add(passenger: passenger) { (success, error) in
            output.didAddPassenger(error: nil)
        }
    }

}
