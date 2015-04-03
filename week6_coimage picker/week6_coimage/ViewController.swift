//
//  ViewController.swift
//  week6_coimage
//
//  Created by iStudents on 2/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import AssetsLibrary
import MobileCoreServices

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    var context: CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    var orientation: UIImageOrientation = .Up
    var imagePicker: UIImagePickerController!
    var newMedia: Bool?

    //@IBOutlet weak var UIImageCiew: UIImageView!
    
    @IBOutlet weak var amountSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        //let fileURL = NSBundle.mainBundle().URLForResource("image", withExtension: "png")
        //beginImage = CIImage(contentsOfURL: fileURL)
        
        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        let outputImage = filter.outputImage
        
        context = CIContext(options:nil)
        //let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        
        //let newImage = UIImage(CGImage: cgimg)
        //self.imageView.image = newImage
        //self.logAllFilters()
    }

    
    @IBAction func loadPhoto(sender: AnyObject) {
        let pickerC = UIImagePickerController()
        pickerC.delegate = self
        self.presentViewController(pickerC, animated: true, completion: nil)
    }
    
    
    @IBAction func savePhoto(sender: AnyObject) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .Camera
        imagePicker.mediaTypes = [kUTTypeImage as NSString]
        presentViewController(imagePicker, animated: true, completion: nil)
        newMedia = true
    }
    
    @IBAction func amountSliderValueChanged(sender: UISlider) {
        let sliderValue = sender.value
        let outputImage = self.oldPhoto(beginImage, withAmount: sliderValue)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        let newImage = UIImage(CGImage: cgimg, scale:1, orientation: orientation)
        self.imageView.image = newImage
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: NSDictionary!) {
        self.dismissViewControllerAnimated(true, completion: nil);
        
        let gotImage = info[UIImagePickerControllerOriginalImage] as UIImage
        
        beginImage = CIImage(image:gotImage)
        orientation = gotImage.imageOrientation
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        self.amountSliderValueChanged(amountSlider)
    }
    
    func logAllFilters() {
    let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        println(properties)
        
        for filterName: AnyObject in properties {
        let fltr = CIFilter(name:filterName as String)
        println(fltr.attributes())
        }
    }
    func oldPhoto(img: CIImage, withAmount intensity: Float) -> CIImage {
        let sepia = CIFilter(name:"CISepiaTone")
        sepia.setValue(img, forKey:kCIInputImageKey)
        sepia.setValue(intensity, forKey:"inputIntensity")
        
        let random = CIFilter(name:"CIRandomGenerator")
        
        let lighten = CIFilter(name:"CIColorControls")
        lighten.setValue(random.outputImage, forKey:kCIInputImageKey)
        lighten.setValue(1 - intensity, forKey:"inputBrightness")
        lighten.setValue(0, forKey:"inputSaturation")
        
        let croppedImage = lighten.outputImage.imageByCroppingToRect(beginImage.extent())
        
        let composite = CIFilter(name:"CIHardLightBlendMode")
        composite.setValue(sepia.outputImage, forKey:kCIInputImageKey)
        composite.setValue(croppedImage, forKey:kCIInputBackgroundImageKey)
        
        let vignette = CIFilter(name:"CIVignette")
        vignette.setValue(composite.outputImage, forKey:kCIInputImageKey)
        vignette.setValue(intensity * 2, forKey:"inputIntensity")
        vignette.setValue(intensity * 30, forKey:"inputRadius")
        
        return vignette.outputImage
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

