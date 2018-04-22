//
//  PassengersRepository.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/9/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

protocol PassengersRepositoryDataStoreProvider {
    func getDataStore() -> PassengersDataStore
}

class PassengersRepository {
    
    var dataStoreProvider: PassengersRepositoryDataStoreProvider
    
    init(dataStoreProvider: PassengersRepositoryDataStoreProvider) {
        self.dataStoreProvider = dataStoreProvider
    }
    
    func add(passenger: Passenger, callback: @escaping (Bool?, Error?) -> Void) {
        let dataStore = self.dataStoreProvider.getDataStore()
        dataStore.add(passenger: passenger, callback: callback)
    }
    
    func getAllPassengers(callback: @escaping(_ passengers: [Passenger]?, _ error: Error?) -> Void) {
        let dataStore = self.dataStoreProvider.getDataStore()
        dataStore.getAllPassengers(callback: callback)
    }
    
}
