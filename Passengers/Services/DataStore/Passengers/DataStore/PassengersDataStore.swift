//
//  PassengersDataStore.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/9/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

protocol PassengersDataStore {
    func add(passenger: Passenger, callback: @escaping(_ success: Bool?, _ error: Error?) -> Void)
    func remove(by ID: String, callback: @escaping(_ success: Bool?, _ error: Error?) -> Void)
    func getAllPassengers(callback: @escaping(_ passengers: [Passenger]?, _ error: Error?) -> Void)
}
