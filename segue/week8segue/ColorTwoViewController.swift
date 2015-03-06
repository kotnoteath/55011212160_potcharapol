//
//  ColorTwoViewController.swift
//  week8segue
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController,text:String)
}

class ColorTwoViewController: UIViewController {
    
    var delegate:ColorTwoViewControllerDelegate? = nil
    
    var colorString = ""
    
    @IBOutlet weak var colorLable: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!


    @IBAction func colorSelectButton(sender: UIButton) {
        colorLable.text = sender.titleLabel!.text!
    }
    
    @IBAction func SaveColor(sender: UIBarButtonItem) {
        if (delegate != nil) {
        delegate!.myVCDidFinish(self, text: colorLable!.text!)
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        colorLable.text = colorString
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
