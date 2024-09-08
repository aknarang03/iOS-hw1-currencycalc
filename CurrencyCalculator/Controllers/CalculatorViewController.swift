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
    
    @IBOutlet weak var conversionFactor: UITextField!
    
    let calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        euroAmount.text = "0.00"
        dollarAmount.text = "0.00"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        conversionFactor.text = String (calculator.getConversionFactor())
    }
    
    @IBAction func convertToEuro(_ sender: UIButton) {
        var euros = 0.00
        if let dollar = Double (dollarAmount.text!) {
            euros = calculator.dollarToEuro(dollar: dollar)
        }
        euroAmount.text = String (format: "%.2f", euros)
        view.endEditing(true) // collapse keyboard
    }
    
    @IBAction func convertToDollar(_ sender: UIButton) {
        var dollars = 0.00
        if let euro = Double (euroAmount.text!) {
            dollars = calculator.euroToDollar(euro: euro)
        }
        dollarAmount.text = String (format: "%.2f", dollars)
        view.endEditing(true) // collapse keyboard
    }
    
    @IBAction func changeConversionFactor(_ sender: UIButton) {
        if let rate = Double (conversionFactor.text!) {
            calculator.setConversionFactor(rate: rate)
        } 
        else { // e.g. user entered nothing
            calculator.setConversionFactor(rate: 0.00)
            conversionFactor.text = String ("0.00")
        }
        view.endEditing(true) // collapse keyboard
    }
    
}
