//
//  GoalsVC.swift
//  goalpost
//
//  Created by Егор Горских on 05.04.2021.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
    }


    @IBAction func addGoalBtnWasPressed(_ sender: UIButton) {
        print(#function)
        
        guard
            let createGoalVC = storyboard?.instantiateViewController(identifier: "CreateGoalVC")
        else {
            return
        }
        presentDetail(createGoalVC)
    }
    
}

extension GoalsVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell
        else {
            return UITableViewCell()
        }
        cell.configureCell(description: "Eat salad twice a week", type: .shortTerm, goalProgressAmount: 2)
        return cell
    }
    
    
}
