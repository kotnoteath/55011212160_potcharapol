//
//  data.swift
//  customTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<lightsaber> {
        var tempArray = Array<lightsaber>()
        
        //let l0 = lightsaber(lImage: UIImage(named: "m.jpg"), lName: "")
        //tempArray.append(l0)
        
        let l1 = lightsaber(lImage: UIImage(named: "cs.jpg"), lName: "")
        tempArray.append(l1)
        
        let l2 = lightsaber(lImage: UIImage(named: "gis.jpg"), lName: "")
        tempArray.append(l2)
        
        let l3 = lightsaber(lImage: UIImage(named: "is.jpg"), lName: "")
        tempArray.append(l3)
        
        let l4 = lightsaber(lImage: UIImage(named: "it.jpg"), lName: "")
        tempArray.append(l4)
        
        let l5 = lightsaber(lImage: UIImage(named: "mc.png"), lName: "")
        tempArray.append(l5)
        
        let l6 = lightsaber(lImage: UIImage(named: "nmd.png"), lName: "")
        tempArray.append(l6)
        
        
        return tempArray
    }
   
}
