//
//  ViewController.swift
//  tipsy
//
//  Created by shawn koo on 2/16/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bill_amount: UITextField!
    
    @IBOutlet weak var tip_percentage: UITextField!
    
    @IBOutlet weak var tip_amount: UILabel!
    
    @IBOutlet weak var total_amount: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func tap_action(_ sender: Any) {
        
        view.endEditing(true)
    }
    @IBAction func calculate_tip(_ sender: Any) {
        //calculate bill
        //calculate tip %
        //calculate tip $
        //calculate total
        let bill = Double(bill_amount.text!) ?? 0
        let percentage = Double(tip_percentage.text!) ?? 0
        let ratio = percentage * 0.01
        let tip = bill*ratio
        let total = bill + tip
        tip_amount.text = String(format: "$%.2f", tip)
        total_amount.text = String(format: "$%.2f", total)
    }
}

