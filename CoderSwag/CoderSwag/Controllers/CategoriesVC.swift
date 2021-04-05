//
//  CategoriesVC.swift
//  CoderSwag
//
//  Created by Егор Горских on 05.04.2021.
//

import UIKit

class CategoriesVC: UIViewController {
    
    @IBOutlet weak var categoriesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        categoriesTableView.dataSource = self
        categoriesTableView.delegate = self
        categoriesTableView.rowHeight = 180
        
        
    }
    
    
}

extension CategoriesVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let categorys = DataService.instance.getCategories()
            let category = categorys[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)            
        }
    }
    
}
