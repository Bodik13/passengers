//
//  PassengersDataStoreProvider.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/9/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

class PassengersDataStoreProvider: PassengersRepositoryDataStoreProvider {

     func getDataStore() -> PassengersDataStore {
        return PassengersDataStoreLocal()
    }
    
}
