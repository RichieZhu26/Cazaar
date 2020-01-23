//
//  NetworkManager.swift
//  Cazaar
//
//  Created by myl142857 on 1/11/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import Foundation
import Alamofire

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
    
    static func user_signin(email: String, password: String, completion: @escaping (System?) -> Void) {
        let parameters: [String: Any] = [
            "email": email,
            "password": password
        ]
        Alamofire.request(user_signin_endpoint, method: .post, parameters: parameters, encoding: JSONEncoding.default).validate().responseData { response in
            switch response.result {
            case .success(let data):
                let jsonDecoder = JSONDecoder()
                if let response = try? jsonDecoder.decode(UserResponse.self, from: data) {
                    let system: System = System(currentUser: User(id: response.data.id, name: response.data.name, email: response.data.email, password: response.data.password), postArray: [])
                    completion(system)
                }
                else {
                    completion(nil)
                }
            case .failure(let error):
            print(error.localizedDescription)
            }
        }
    }
}
