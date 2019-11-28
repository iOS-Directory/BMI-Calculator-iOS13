//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by FGT MAC on 11/28/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0 )
     }

    mutating func calculateBMI(height: Float , weight: Float){
        let bmiValue = weight / (height * height)
//        bmi = BMI(value: bmiValue, advice: "String",  color: UIColor.red )
    }
    

}
