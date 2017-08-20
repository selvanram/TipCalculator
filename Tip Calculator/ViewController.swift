//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Vijay Ram on 8/6/17.
//  Copyright © 2017 Vijay Ram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    var defaults = UserDefaults.standard
    
    var TIPPERCENTAGES = [0.18, 0.2, 0.25]
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "default_tip_index")
        billField.becomeFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.7, animations: { self.view.backgroundColor = .blue }, completion: nil)
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "default_tip_index")
        if billField.text != "" {
            performTipCalculation()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        UIView.animate(withDuration: 0.4, animations: { self.view.backgroundColor = .white }, completion: nil)
    }

    @IBAction func calculateTip(_ sender: Any) {
        performTipCalculation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func performTipCalculation() {
        let bill = Double(billField.text!) ?? 0
        let tipValue = bill * TIPPERCENTAGES[tipControl.selectedSegmentIndex]
        let totalValue = bill + tipValue
        
        let total = totalValue as NSNumber
        let tip = tipValue as NSNumber
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = NSLocale.current
        
        
        tipLabel.text = formatter.string(from: tip)
        totalLabel.text = formatter.string(from: total)
    }
}

