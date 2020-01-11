//
//  NetworkManager.swift
//  Cazaar
//
//  Created by myl142857 on 1/11/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import Foundation
import Alamofire

let endpoint = "http://127.0.0.1:5000/users"

class NetworkManager {
    
    static func getUsers() {
        Alamofire.request(endpoint, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let json):
                print(json)
            case .failure(let error):
            print(error.localizedDescription)
            }
        }
    }
}
