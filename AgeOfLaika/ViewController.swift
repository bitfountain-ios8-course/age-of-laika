//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Gustavo Cunha on 9/24/14.
//  Copyright (c) 2014 Gustavo Cunha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var humanAgeTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        humanAgeTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        super.touchesBegan(touches, withEvent: event)
        self.view.endEditing(true)
    }
    
    func textFieldShouldClear(textField: UITextField) -> Bool {
        resultLabel.hidden = true
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        self.view.endEditing(true)
        return true;
    }

    @IBAction func calculateButton(sender: UIButton) {
        var humanAge = Double((humanAgeTextField.text as NSString).doubleValue)
        var dogsAge = 0.0
        // dog age is:
        // human age * 10.5 on the first 2 years
        // human age * 4 on the following ones
        if humanAge > 2 {
            dogsAge += 2 * 10.5
            humanAge -= 2
            dogsAge += humanAge * 4
        }else {
            dogsAge = humanAge * 10.5
        }
        resultLabel.text = "You dog has \(dogsAge) years in Dog Years"
        resultLabel.hidden = false
        self.view.endEditing(true)
    }

}

