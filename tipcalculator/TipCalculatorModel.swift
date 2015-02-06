//
//  tipcalculatorModel.swift
//  tipcalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation

class TipCalculatorModel {
    
    var total: Double
    var taxPct: Double
    var subtotal: Double {
    
    get {
        return total / (taxPct + 1)
    }
    }
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        
    }
    func calcTipWithTipPct(tipPct:Double) -> Double{
        return subtotal * tipPct
    }
    
    func returnPossibleTips() -> [Int: Double] {
        let possbleTipsInferred = [0.15, 0.18, 0.20]
        let possbleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        
        var retval = [Int: Double]()
        for possbleTips in possbleTipsInferred{
            let intPct = Int(possbleTips*100)
            retval[intPct] = calcTipWithTipPct(possbleTips)
        }
        return retval
        
    }
}