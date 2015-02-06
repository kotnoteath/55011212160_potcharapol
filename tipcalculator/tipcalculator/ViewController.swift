import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBOutlet weak var totalTextField: UITextField!

    @IBOutlet weak var taxPctSlider: UISlider!
    
    @IBOutlet weak var taxPacLabel: UILabel!
    
    @IBOutlet weak var resultsTextView: UITextView!

    @IBAction func tscPercentageChanged(sender: AnyObject) {
        totalTextField.resignFirstResponder()
    }
    
    @IBAction func calculateTapped(sender: AnyObject) {
        tipCalc.total=Double((totalTextField.text as NSString).doubleValue)
        
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        
        for (tipPct,tipValue) in possibleTips {
            results += "\(tipPct)%: \(tipValue)\n"
        }
        resultsTextView.text = results
    }
    
    @IBAction func viewTapped(sender: AnyObject) {
        totalTextField.resignFirstResponder()
        
    }
    
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    func refreshUI(){
    totalTextField.text = String(format: "%0.2f", tipCalc.total)
    taxPctSlider.value = Float(tipCalc.taxPct)*100.0
    taxPacLabel.text = "Tax Percentage(\(Int(taxPctSlider.value))%)"
    resultsTextView.text = ""
    }
    
}

