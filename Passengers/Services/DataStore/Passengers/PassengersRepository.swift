//
//  PassengersRepository.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/9/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

protocol PassengersRepositoryDataStoreProvider {
    static func getDataStore() -> PassengersDataStore.Type
}

class PassengersRepository {
    
    var dataStoreProvider: PassengersRepositoryDataStoreProvider.Type
    
    init(dataStoreProvider: PassengersRepositoryDataStoreProvider.Type) {
        self.dataStoreProvider = dataStoreProvider
    }
    
    func getAllPassengers(callback: @escaping(_ passengers: [Passenger]?, _ error: Error?) -> Void) {
        let dataStore = self.dataStoreProvider.getDataStore()
        dataStore.getAllPassengers(callback: callback)
}
    
}
