//
//  CategoryCell.swift
//  shop-app
//
//  Created by mariusz on 24.08.2017.
//  Copyright © 2017 mariusz pohorylo. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateView(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
