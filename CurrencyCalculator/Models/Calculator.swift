//
//  Calculator.swift
//  CurrencyCalculator
//
//  Created by Anjali Narang  on 9/7/24.
//

import Foundation

class Calculator {
    
    private var conversionFactor = 0.98
    
    func setConversionFactor (rate: Double) {
        conversionFactor = rate
    }
    
    func getConversionFactor () -> Double {
        return conversionFactor
    }
    
    func dollarToEuro (dollar amount: Double) -> Double {
        return amount * conversionFactor
    }
    
    func euroToDollar (euro amount: Double) -> Double {
        return amount / conversionFactor
    }
    
}

