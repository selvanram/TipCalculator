//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Vijay Ram on 8/6/17.
//  Copyright © 2017 Vijay Ram. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    var defaults = UserDefaults.standard
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBAction func onValueChanged(_ sender: Any) {
        defaults.set(tipControl.selectedSegmentIndex, forKey: "default_tip_index")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipControl.selectedSegmentIndex = defaults.integer(forKey:  "default_tip_index")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
