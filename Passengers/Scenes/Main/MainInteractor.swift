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
    func didFetchPassengersInteractor(passengers: [Passenger])
}

class MainInteractor {
    
   
}

extension MainInteractor: MainInteractorInput {
    
    func fetchPassengers(output: MainInteractorOutput) {
        // get data from storeg
        let passengers = [Passenger(name: "passenger1"), Passenger(name: "passenger2")]
        output.didFetchPassengersInteractor(passengers: passengers)
    }
    
}
