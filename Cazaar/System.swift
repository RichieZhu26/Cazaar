//
//  System.swift
//  Cazaar
//
//  Created by myl142857 on 1/6/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import Foundation

class System {
    var currentUser: User
    var postArray: [Post]
    
    init(currentUser: User, postArray: [Post]) {
        self.currentUser = currentUser
        self.postArray = postArray
    }
    
    func getPostArray() -> [Post] {
        return self.postArray
    }
    
    func addPostArray(post: Post) {
        self.postArray.append(post)
    }
    
}
