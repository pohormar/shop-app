//
//  DataService.swift
//  shop-app
//
//  Created by mariusz on 24.08.2017.
//  Copyright © 2017 mariusz pohorylo. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png"),
        ]
    
    private let hats = [
        Product(title: "Dev Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Dev Logo Hat Black", price: "$19", imageName: "hat02.png"),
        Product(title: "Dev Logo Hat White", price: "$19", imageName: "hat03.png"),
        Product(title: "Dev Logo Snapback", price: "$17", imageName: "hat04.png"),
        ]
    
    private let hoodies = [
        Product(title: "Dev Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Dev Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Dev Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Dev Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Dev Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Dev Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Dev Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Dev Hustle Shirt Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png"),
        ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        case "DIGITAL GOODS":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
}
