//
//  User.swift
//  Cazaar
//
//  Created by myl142857 on 1/23/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import Foundation

class User {
    var id: Int
    var name: String
    var email: String
    var password: String
    
    init(id: Int, name: String, email: String, password: String) {
        self.id = id
        self.name = name
        self.email = email
        self.password = password
    }
}
