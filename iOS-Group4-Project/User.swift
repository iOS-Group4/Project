//
//  User.swift
//  iOS-Group4-Project
//
//  Created by Van Do on 11/16/16.
//  Copyright © 2016 Van Do. All rights reserved.
//

import Foundation



class User {
    var authType: AuthType
    var email: String
    var password: String?
    var pinCode: String
    
    init(authType: AuthType, email: String, pinCode: String, password: String?){
        self.authType = authType
        self.email = email
        self.password = password
        self.pinCode = pinCode
    }
}
