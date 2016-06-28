//
//  ViewController.swift
//  guessing game
//
//  Created by Dmitriy Khait on 4/15/16.
//  Copyright © 2016 KhaitTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var guessTextField: UITextField!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        let r = String(arc4random_uniform(6))
        
        if r == (guessTextField.text){
            resultLabel.text =  "You win!!"
        } else {
          resultLabel.text =  "You lose! Ilpt was \(r)"

        }
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

