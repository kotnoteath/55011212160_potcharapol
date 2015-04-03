//
//  ViewController.swift
//  UIImagePickerController
//
//  Created by iStudents on 4/3/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import MobileCoreServices



class ViewController: UIViewController ,UINavigationControllerDelegate,UIImagePickerControllerDelegate{

    @IBOutlet weak var ImageView: UIImageView!
    
    
    @IBAction func takePhoto(sender: AnyObject) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .Camera
        imagePicker.mediaTypes = [kUTTypeImage as NSString]
        presentViewController(imagePicker, animated: true, completion: nil)
        newMedia = true
    }
    
    var imagePicker: UIImagePickerController!
    var newMedia: Bool?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }

    @IBAction func library(sender: AnyObject) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        imagePicker.mediaTypes = [kUTTypeImage as NSString]
        presentViewController(imagePicker, animated: true, completion: nil)
        newMedia = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        dismissViewControllerAnimated(true, completion: nil)
        
            let mediaType = info[UIImagePickerControllerMediaType] as NSString
        if (mediaType.isEqualToString(kUTTypeImage as NSString)){
        let image = info[UIImagePickerControllerOriginalImage] as UIImage
            ImageView.image = image
            if (newMedia == true){
            UIImageWriteToSavedPhotosAlbum(image, self, "image: didFinishSavingWithError: contextInfo:", nil)
            }
        }
    }
    func image(image: UIImage, didFinishSavinngWithError error: NSErrorPointer, contextInfo:UnsafePointer<Void>){
        if (error != nil){
        let alert = UIAlertController(title: "Save Failed", message: "message: Failed to save image", preferredStyle: UIAlertControllerStyle.Alert)
            let cancleAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
            
            alert.addAction(cancleAction)
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }


}

