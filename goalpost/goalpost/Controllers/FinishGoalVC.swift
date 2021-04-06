//
//  FinishGoalVC.swift
//  goalpost
//
//  Created by Егор Горских on 06.04.2021.
//

import UIKit

class FinishGoalVC: UIViewController {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
    }
    
    @IBAction func createGoalWasPressed(_ sender: Any) {
        // Pass data info Core Data Goal model
        
    }
    
}
