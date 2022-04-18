//
//  User.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import Foundation

class User : Codable {
    
    var phoneNumber : String
    var name : String
    
    
    required init(phoneNumber:String,name:String) {
        self.phoneNumber = phoneNumber
        self.name = name
    }
    
    convenience init() {
        self.init(phoneNumber: "09123456789", name: "TestUser")
    }
}


