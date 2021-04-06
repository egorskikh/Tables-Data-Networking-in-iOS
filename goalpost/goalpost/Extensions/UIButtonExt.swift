//
//  UIButtonExt.swift
//  goalpost
//
//  Created by Егор Горских on 06.04.2021.
//

import UIKit

extension UIButton{
    
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.4941176471, green: 0.7725490196, blue: 0.462745098, alpha: 1)
    }
    
    func setDeselectedColor(){
        self.backgroundColor = #colorLiteral(red: 0.7450980392, green: 0.8862745098, blue: 0.7411764706, alpha: 1)
    }
    
}
