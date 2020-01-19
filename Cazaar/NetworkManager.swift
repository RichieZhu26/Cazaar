//
//  NetworkManager.swift
//  Cazaar
//
//  Created by myl142857 on 1/11/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import Foundation
import Alamofire

struct User: Codable {
    var email: String
    var password: String
}

let get_users_endpoint = "http://127.0.0.1:5000/users"
let user_signin_endpoint = "http://127.0.0.1:5000/user/signin"

class NetworkManager {
    
    static func get_users() {
        Alamofire.request(get_users_endpoint, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let json):
                print(json)
            case .failure(let error):
            print(error.localizedDescription)
            }
        }
    }
    
    static func user_signin(email: String, password: String) {
        let parameters: [String: Any] = [
            "email": email,
            "password": password
        ]
        Alamofire.request(user_signin_endpoint, method: .post, parameters: parameters, encoding: JSONEncoding.default).validate().responseData { response in
            switch response.result {
            case .success(let data):
                print("Encoding success")
                let jsonDecoder = JSONDecoder()
                if let response = try? jsonDecoder.decode(User.self, from: data) {
                    print("Recieve user with username \(response.email)")
                }
                print("Decoding Failure")
            case .failure(let error):
            print(error.localizedDescription)
            }
        }
    }
}
