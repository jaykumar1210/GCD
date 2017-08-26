//
//  ViewController.swift
//  GCD Swift
//
//  Created by MacStudent on 2017-08-02.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    let ptrJay = DispatchQueue(label: "jay")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func longButton1(_ sender: UIButton) {
        ptrJay.async {
            self.longRunningOperation()
        }
    }
    
  
    
    func longRunningOperation()
    {
        
        
        let delayInSeconds = 5.0 // 1
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delayInSeconds) { // 2
        
        self.resultLabel.text = "Result : " + String(arc4random())
            
        }
    }
    
}

