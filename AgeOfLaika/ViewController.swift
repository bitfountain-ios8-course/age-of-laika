//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Gustavo Cunha on 9/24/14.
//  Copyright (c) 2014 Gustavo Cunha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanAgeTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateButton(sender: UIButton) {
        let humanAge = Double((humanAgeTextField.text as NSString).doubleValue)
        resultLabel.text = "You dog has \(humanAge * 7) years in Dog Years"
        resultLabel.hidden = false
        humanAgeTextField.resignFirstResponder()
    }

}

