//
//  ViewController.swift
//  tips
//
//  Created by T on 12/1/15.
//  Copyright © 2015 T. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
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
        var tipPercents = [0.18, 0.2, 0.22]
        let tipPercent = tipPercents[tipControl.selectedSegmentIndex]
        
//        var billAmount = billField.text.bridgeToObjectiveC().doubleValue
//        let billAmount = NSString(string: billField.text).doubleValue
        
        
        let billAmount: Double = (billField.text! as NSString).doubleValue
        let tip = billAmount * tipPercent
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

