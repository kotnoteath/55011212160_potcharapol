// Playground - noun: a place where people can play

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
