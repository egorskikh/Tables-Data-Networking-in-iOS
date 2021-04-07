//
//  GoalCell.swift
//  goalpost
//
//  Created by Егор Горских on 06.04.2021.
//

import UIKit

class GoalCell: UITableViewCell {


    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    @IBOutlet weak var completeView: UIView!
    
    func configureCell(_ goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(describing: goal.goalProgress)
        
        if goal.goalProgress == goal.goalCompletionValue {
            self.completeView.isHidden = false
        } else {
            self.completeView.isHidden = true
        }
    }
}


