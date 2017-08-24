//
//  Category.swift
//  shop-app
//
//  Created by mariusz on 24.08.2017.
//  Copyright © 2017 mariusz pohorylo. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
