//
//  calculatorBrain.swift
//  bodyMassIndex app
//
//  Created by Fateme Karimi on 2021-09-07.
//

import UIKit

struct CalculatorBrain {
    var bmi :BMI?
    func getBMIValue() -> String{
        
        let bmiTOdeciamal = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTOdeciamal
            
        
       
    }
    func getAdvice() -> String{
        
        return bmi?.advice ?? "no advice"
            
        
       
    }
    func getBMIColor()->UIColor{
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    mutating func calculateBMI(height :Float , weight:Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "normal weight", color: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "overweight", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
             
        }
        //bmi = BMI(value: <#T##Float#>, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
}
