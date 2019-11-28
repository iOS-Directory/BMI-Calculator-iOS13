//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    //Initializing the struct
    var calculatorBrain = CalculatorBrain()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let roundedNum = String(format: "%.2f", sender.value)
//        print(roundedNum)
        heightLabel.text = "\(roundedNum) m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
         let roundedNum = Int(sender.value)
//        print(roundedNum)
        weightLabel.text = "\(roundedNum) kg"
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        //tapping into the struct method to calculate the BMI
        calculatorBrain.calculateBMI(height:height ,weight:weight )
        
        //With the performSegue method we are linking the second view
        //withIdentifier is the name we gave to the link/segue
        //sender is from where is originating the request
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //For multipage apps do and if statement to check which segue to prepare for
        if segue.identifier == "goToResults"{
            //
            let destinationVc = segue.destination as! ResultViewController
            
            //Getting the return value from the struct method
            destinationVc.bmiValue = calculatorBrain.getBMIValue()
        }
    }
    
}

