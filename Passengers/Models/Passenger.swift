//
//  Passenger.swift
//  Passengers
//
//  Created by Bohdan Hutsul on 4/7/18.
//  Copyright © 2018 Bohdan Hutsul. All rights reserved.
//

import Foundation

struct Keys {
    static let id = "idKey"
    static let name = "nameKey"
    static let phoneNumber = "phoneNumberKey"
}

class Passenger: NSObject, NSCoding {

    var id: String?
    var name: String?
    var phoneNumber: String?
    
    init(name: String?, phoneNumber: String? = nil) {
        self.id = UUID().uuidString
        self.name = name
        self.phoneNumber = phoneNumber
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.id, forKey: Keys.id)
        aCoder.encode(self.name, forKey: Keys.name)
        aCoder.encode(self.id, forKey: Keys.phoneNumber)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.id = aDecoder.decodeObject(forKey: Keys.id) as? String
        self.name = aDecoder.decodeObject(forKey: Keys.name) as? String
        self.phoneNumber = aDecoder.decodeObject(forKey: Keys.phoneNumber) as? String
    }
}
