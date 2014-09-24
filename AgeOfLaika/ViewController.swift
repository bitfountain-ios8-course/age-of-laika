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
        let humanAge = Double((humanAgeTextField.text as NSString).doubleValue)
        resultLabel.text = "You dog has \(humanAge * 7) years in Dog Years"
        resultLabel.hidden = false
        self.view.endEditing(true)
    }

}

