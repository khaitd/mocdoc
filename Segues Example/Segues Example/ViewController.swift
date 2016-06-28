//
//  ViewController.swift
//  Segues Example
//
//  Created by Dmitriy Khait on 4/21/16.
//  Copyright © 2016 KhaitTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var resultText: UILabel!
    
    @IBAction func textButton(sender: AnyObject) {
        
        resultText.text = textField.text
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
   
              
        
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
         self.view.endEditing(true)
        return true
    }
    
    
    
    
    
    

}

