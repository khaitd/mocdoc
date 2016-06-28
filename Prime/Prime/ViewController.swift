//
//  ViewController.swift
//  Prime
//
//  Created by Dmitriy Khait on 4/16/16.
//  Copyright © 2016 KhaitTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var numberTextField: UITextField!
    
    @IBAction func submitButton(sender: AnyObject) {
        
        if let num = Int(numberTextField.text!){
        
            var prim = true
            for i in 2..<num {
                if num%i == 0{
                    prim = false
                }
            }
        
            if prim {
                resultLabel.text = "The number you entered, \(num) is prime"
            }else{
                resultLabel.text = "The number you entered, \(num) is NOT prime"
            }
        
        
        }else {
            resultLabel.text = "Invalid entry, Put in a number!"
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

