//
//  SettingsViewController.swift
//  tips
//
//  Created by Jiaqi Wu on 12/25/15.
//  Copyright (c) 2015 Jiaqi Wu. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    /*Outlets*/
    
    @IBOutlet weak var slider: UISlider!

    @IBOutlet weak var defaultTip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //var tipPercentage = Int(slider.value)
        
        //defaultTip.text = String(format: "%.0f%%", tipPercentage)
        
        //Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChanged(sender: AnyObject) {
        var tipPercentage = Int(round(slider.value))
        
        defaultTip.text = "\(tipPercentage)%"
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tipPercentage, forKey: "default_tip_percentage")
        defaults.synchronize()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultPercent = defaults.integerForKey("default_tip_percentage")
        
        slider.value = Float(defaultPercent)
        defaultTip.text = "\(defaultPercent)%"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
