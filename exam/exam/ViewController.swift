//
//  ViewController.swift
//  exam
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
var v1=0
var v2=0
var v3=0


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func but1(sender: AnyObject) {
        v1+=1
        l1.text=String(v1)
    }
    
    @IBAction func but2(sender: AnyObject) {
        v2+=2
        l2.text=String(v2)
    }
    
    @IBAction func but3(sender: AnyObject) {
        v3+=3
        l3.text=String(v3)
    }

    
    @IBOutlet weak var l1: UILabel!
    
    @IBOutlet weak var l2: UILabel!
    
    @IBOutlet weak var l3: UILabel!
    
    @IBAction func reset(sender: AnyObject) {
        
        v1=0
        l1.text = String(v1)
        v2=0
        l2.text = String(v2)
        v3=0
        l3.text = String(v3)
    }
}

