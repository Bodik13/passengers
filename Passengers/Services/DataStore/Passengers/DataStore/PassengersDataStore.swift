//
//  PassengersDataStore.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/9/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

protocol PassengersDataStore {
    static func getAllPassengers(callback: @escaping(_ passengers: [Passenger]?, _ error: Error?) -> Void)
}
