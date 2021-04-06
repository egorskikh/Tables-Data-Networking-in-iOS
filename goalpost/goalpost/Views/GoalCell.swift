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
    
    func configureCell(description: String, type: GoalType, goalProgressAmount: Int) {
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type.rawValue 
        self.goalProgressLbl.text = String(describing: goalProgressAmount)
    }
}


