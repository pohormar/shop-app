//
//  ProductsVC.swift
//  shop-app
//
//  Created by mariusz on 26.08.2017.
//  Copyright © 2017 mariusz pohorylo. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private(set) public var products = [Product]()
    @IBOutlet weak var productCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.delegate = self
        productCollection.dataSource = self
    }
    
    func initProducts(category: Category){
        self.products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
    
}
