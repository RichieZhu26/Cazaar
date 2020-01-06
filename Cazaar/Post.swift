//
//  Post.swift
//  Cazaar
//
//  Created by myl142857 on 1/6/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import Foundation
import UIKit

class Post {
    var id: Int
    var name: String
    var group: String
    var description: String
    var images: [UIImage]
    
    init(id: Int, name: String, group: String, description: String, images: [UIImage]) {
        self.id = id
        self.name = name
        self.group = group
        self.description = description
        self.images = images
    }
}
