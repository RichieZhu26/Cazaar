//
//  System.swift
//  Cazaar
//
//  Created by myl142857 on 1/6/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import Foundation

class System {
    var postArray: [Post]
    
    init(postArray: [Post]) {
        self.postArray = postArray
    }
    
    func getInitials() -> String {
        var initial = ""
        for post in self.postArray {
            initial = post.name
        }
        return initial
    }
    
    func getLength() -> Int {
        return self.postArray.count
    }
}
