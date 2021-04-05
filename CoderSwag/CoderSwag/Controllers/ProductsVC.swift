//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by Егор Горских on 05.04.2021.
//

import UIKit

class ProductsVC: UIViewController {
    
    @IBOutlet weak var productsCollectionView: UICollectionView!
    private(set) public var products = [Product]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollectionView.dataSource = self
        productsCollectionView.delegate = self
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
}

extension ProductsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    }
    
    
}
