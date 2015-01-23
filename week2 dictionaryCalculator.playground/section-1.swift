class TipCalculator {
    
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct+1)
        
    }
    func calcTipWithTipPct(tipPct:Double) -> Double{
        return subtotal * tipPct
    }
    
    func returnPossibleTips() -> [Int: Double] {
        let possbleTipsInferred = [0.15, 0.18, 0.20]
        let possbleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        
        var retval = Dictionary<Int, Double>()
        for possbleTips in possbleTipsInferred{
            let intPct = Int(possbleTips*100)
            retval[intPct] = calcTipWithTipPct(possbleTips)
        }
        return retval
        
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()
