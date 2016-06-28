//
//  ViewController.swift
//  Timer
//
//  Created by Dmitriy Khait on 4/16/16.
//  Copyright © 2016 KhaitTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    var time = 0
    func result() {
        if b {
        time += 1
        resultLabel.text = String(time)
        }
        
    }
    
    var b = false
    
    @IBOutlet var resultLabel: UILabel!
    @IBAction func startButt(sender: AnyObject) {
        b = true
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        

        resultLabel.text = String(time)
        
    }
    @IBAction func pauseButt(sender: AnyObject) {
        
       timer.invalidate()
        
        
    }
    @IBAction func resetButt(sender: AnyObject) {
        
        timer.invalidate()
        time = 0
        resultLabel.text = "0"

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}






