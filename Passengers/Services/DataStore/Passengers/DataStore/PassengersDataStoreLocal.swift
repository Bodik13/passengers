//
//  PassengersDataStoreLocal.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/9/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

class PassengersDataStoreLocal: PassengersDataStore {
    
    let storeFileName = "passengers.plist"
    
    lazy var passengers: [Passenger]? = self.storedData()
    
    func add(passenger: Passenger, callback: @escaping (Bool?, Error?) -> Void) {
        passengers?.append(passenger)
    }
    
    func remove(by ID: String, callback: @escaping (Bool?, Error?) -> Void) {
        
    }
    
    func getAllPassengers(callback: @escaping(_ passengers: [Passenger]?, _ error: Error?) -> Void) {
        callback(self.passengers, nil)
    }
    
    deinit {
        saveData()
    }
    
    //store
    private func filePath(fileName: String) -> String {
        let manager = FileManager.default
        let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first! as NSURL
        return url.appendingPathComponent(fileName)!.path
    }
    
    private func saveData() {
        NSKeyedArchiver.archiveRootObject(self.passengers ?? [Passenger](), toFile: filePath(fileName: self.storeFileName))
    }
    
    private func storedData() -> [Passenger]? {
        if let passengers = NSKeyedUnarchiver.unarchiveObject(withFile: filePath(fileName: self.storeFileName)) as? [Passenger] {
            return passengers
        }
        return [Passenger]()
    }
    
}
