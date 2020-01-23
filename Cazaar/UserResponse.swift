//
//  User.swift
//  Cazaar
//
//  Created by myl142857 on 1/23/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import Foundation

struct UserDataResponse: Codable {
    var id: Int
    var name: String
    var email: String
    var password: String
}

struct UserResponse: Codable {
    var successful: Bool
    var data: UserDataResponse
}
