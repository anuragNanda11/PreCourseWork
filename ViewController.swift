//
//  ViewController.swift
//  Tips
//
//  Created by Nate nanda on 12/22/15.
//  Copyright © 2015 AnuragNanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.15,0.18,0.20]
        var billAmount = 0.00
        if let amount = Double((amountField?.text)!) {
            billAmount = amount
        } else {
            
        }
        
        let tip = billAmount * tipPercentages[tipControl.selectedSegmentIndex]
        let total = billAmount + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
  }

