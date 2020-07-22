//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Gino on 20/07/2020.
//  Copyright © 2020 Gino Stoian. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You should increase your calorie intake!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "You should stop eating cookies! :(", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
    }
    
    mutating func getBMIValue() -> String {
        let bmiToDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
       return bmiToDecimal
    }
    
    mutating func getAdvice() -> String {
        let advice = bmi?.advice
        return advice ?? "I don't know what to say"
    }
    
    mutating func getColor() -> UIColor {
        let color = bmi?.color
        return color ?? UIColor.black
    }
    
}

