//
//  CalculatorViewController.swift
//  CurrencyCalculator
//
//  Created by Anjali Narang  on 9/7/24.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var dollarAmount: UITextField!
    @IBOutlet weak var euroAmount: UITextField!
    
    let calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        euroAmount.text = "0.00"
        dollarAmount.text = "0.00"
    }
    
    @IBAction func convertToEuro(_ sender: UIButton) {
        var euros = 0.00
        if let dollar = Double (dollarAmount.text!) {
            euros = calculator.dollarToEuro(dollar: dollar)
        }
        euroAmount.text = String (format: "%.2f", euros)
    }
    
    @IBAction func convertToDollar(_ sender: UIButton) {
        var dollars = 0.00
        if let euro = Double (euroAmount.text!) {
            dollars = calculator.euroToDollar(euro: euro)
        }
        dollarAmount.text = String (format: "%.2f", dollars)
    }
    
}
