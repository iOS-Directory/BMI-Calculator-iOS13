//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by FGT MAC on 11/28/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //creating the variable for the value
    //and we initialized it as a optional string
    var bmiValue: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculatedPressed(_ sender: UIButton) {
        //to go back to the original view
        //we can just dismiss the current one which is on the top
        dismiss(animated: true, completion: nil)
        
    }
}
