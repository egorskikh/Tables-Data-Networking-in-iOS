//
//  ViewController.swift
//  todo
//
//  Created by Егор Горских on 07.04.2021.
//

import UIKit

class TodoVC: UIViewController {

    @IBOutlet weak var todoItemTxt: UITextField!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkService.shared.getTodos()
    }

    @IBAction func addTodoWasPressed(_ sender: UIButton) {
    }
    
}

