//
//  ViewController.swift
//  Tippy
//
//  Created by Anthony Lee on 9/6/18.
//  Copyright © 2018 anthony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercentageControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapped(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func caculate(_ sender: Any) {
        let tipPercentage = [0.15,0.18,0.2]
        
        let bill = (Double(billField.text!)) ?? 0
        let tip = bill * tipPercentage[tipPercentageControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

