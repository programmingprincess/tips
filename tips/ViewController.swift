//
//  ViewController.swift
//  tips
//
//  Created by Jiaqi Wu on 12/23/15.
//  Copyright (c) 2015 Jiaqi Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*All outlets go here*/
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var sliderPercentageLabel: UILabel!
    
    /*End of outlets*/
    
    
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
        
        var tipPercent = Int(round(tipSlider.value))
        //Make the float value obtained from slider an integer for clean multiplication
        
        var billAmount = billField.text._bridgeToObjectiveC().doubleValue
        //get the double from billAmount, using objective C, because this isn't available in swift yet 
        
        var tip = billAmount * (Double(tipPercent)/100)
        
        var total = billAmount + tip
        
        /*Two decimal places*/
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        sliderPercentageLabel.text = "\(tipPercent)%"

    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    /*Coming back after settings page*/
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultPercent = defaults.integerForKey("default_tip_percentage")
        
        tipSlider.value = Float(defaultPercent)
        sliderPercentageLabel.text = "\(defaultPercent)%"
        
        var billAmount = billField.text._bridgeToObjectiveC().doubleValue

        var tip = billAmount * (Double(defaultPercent)/100)
        
        var total = billAmount + tip
        
        /*Two decimal places*/
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        // This is a good place to retrieve the default tip percentage from NSUserDefaults
        // and use it to update the tip amount
    }
    
}







