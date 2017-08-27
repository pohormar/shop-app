//
//  Product.swift
//  shop-app
//
//  Created by mariusz on 26.08.2017.
//  Copyright © 2017 mariusz pohorylo. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    init(title: String, price: String, imageName: String){
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
