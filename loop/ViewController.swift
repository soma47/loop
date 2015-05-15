//
//  ViewController.swift
//  loop
//
//  Created by Soma on 2015/04/26.
//  Copyright (c) 2015年 Soma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    @IBOutlet var countLabel: UILabel!
    var password = Int()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel1.text = "?"
        resultLabel2.text = "?"
        resultLabel3.text = "?"
        resultLabel4.text = "?"
        countLabel.text = "0"
        
     

        password = Int (arc4random_uniform(1234))
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

                
            }


    @IBAction func start(){
        for i in 0 ..< 10000 {
            countLabel.text = String(i)
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.0005))
            
            if i == password {
                var digists = [Int]()
                for j in 0 ..< 4 {
                    digists.append(password % 10)
                     password =  (password / 10)
                }
                
                resultLabel1.text = String(digists[0])
                resultLabel2.text = String(digists[1])
                resultLabel3.text = String(digists[2])
                resultLabel4.text = String(digists[3])
            }
        }
        
    }
}