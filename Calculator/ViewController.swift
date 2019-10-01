//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
   var isfinishedNumbers = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isfinishedNumbers = true
        
        
    }

    var numValueNew : [String] = [""]
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        
        if let numValue = sender.currentTitle{
            if isfinishedNumbers{
                displayLabel.text = numValue
                isfinishedNumbers = false
            } else{
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }

}
//commit

