//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by FGT MAC on 11/28/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiString = "0.0"
    
    mutating func calculateBMI(height: Float , weight: Float){
         let bmi = weight / pow(height, 2)
        bmiString = String(format: "%.1f",bmi)
    }
    
   func bmiValue() -> String{
        return bmiString
    }

}
