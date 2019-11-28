//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by FGT MAC on 11/28/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //Creating the variable for the value
    //and we initialized it as a optional string
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    //Creating outlets
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var colorLabel: UIImageView!
    
    //When the view loads the values will be set
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label outlet = to optional value coming from calculator
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        colorLabel.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculatedPressed(_ sender: UIButton) {
        //to go back to the original view
        //we can just dismiss the current one which is on the top
        dismiss(animated: true, completion: nil)
    }
}
