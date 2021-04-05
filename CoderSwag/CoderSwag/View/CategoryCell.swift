//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by Егор Горских on 05.04.2021.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    

    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
