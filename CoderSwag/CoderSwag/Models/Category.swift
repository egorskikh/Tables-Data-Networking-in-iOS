//
//  Category.swift
//  CoderSwag
//
//  Created by Егор Горских on 05.04.2021.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
