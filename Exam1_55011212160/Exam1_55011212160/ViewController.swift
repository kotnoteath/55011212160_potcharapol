//
//  ViewController.swift
//  Exam1_55011212160
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var name: UITextField!

    @IBOutlet weak var mid1: UITextField!
    
    @IBOutlet weak var mid2: UITextField!
    
    @IBOutlet weak var sco1: UITextField!
    
    @IBOutlet weak var sco2: UITextField!
    
    @IBOutlet weak var fin1: UITextField!
    
    @IBOutlet weak var fin2: UITextField!
    
    @IBOutlet weak var result: UITextView!
    
    
    @IBAction func cal(sender: UIButton) {
        var m1=mid1.text.toInt()
        var s1=sco1.text.toInt()
        var f1=fin1.text.toInt()
        s1 = (m1! + s1! + f1!)
        if (s1 == 100){
            var r = ("")
            var g = ("")
            var s = 0
            var m2=mid2.text.toInt()
            var s2=sco2.text.toInt()
            var f2=fin2.text.toInt()
            if (m1 >= m2 && s1 >= s2 && f1 >= f2){
            r += "\(m2! + s2! + f2!)\n"
            s = (m2! + s2! + f2!)
            if (s >= 80){
                g = "A"
            }
            else if (s >= 74){
                g = "B+"
            }
            else if (s >= 68){
                g = "B"
            }
            else if (s >= 62){
                g = "C+"
            }
            else if (s >= 56){
                g = "C"
            }
            else if (s >= 50){
                g = "D+"
            }
            else if (s >= 44){
                g = "D"
            }
            else {
                g = "F"
            }
            
            result.text = r+"\n Grade is "+g
        }
            else{
                result.text = "score not match"
            }
        }
        else {
            result.text = "sum score must 100 only"
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

