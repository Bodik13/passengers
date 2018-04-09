//
//  PassengersDataStoreLocal.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/9/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

class PassengersDataStoreLocal: PassengersDataStore {
    
    static func getAllPassengers(callback: @escaping(_ passengers: [Passenger]?, _ error: Error?) -> Void) {
        
        let passengers = [Passenger(name: "passenger1"), Passenger(name: "passenger2"), Passenger(name: "passenger3")]
        
        callback(passengers, nil)
    }

}
