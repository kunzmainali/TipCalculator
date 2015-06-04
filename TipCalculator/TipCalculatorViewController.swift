//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Kunz Mainali on 6/3/15.
//  Copyright (c) 2015 Kunz Mainali. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController {

    @IBOutlet weak var amountBeforeTaxTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    
    var tipCalc = TipCalc(amountBeforeTax: 25.00, tipPercentage: 0.2)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        amountBeforeTaxTextField.text = String(format: "%0.2f", arguments: [tipCalc.amountBeforeTax])
        tipPercentageLabel.text = String(format: "Tip %d%%", arguments: [tipCalc.tipPercentage * 100])
    }

    func calcTip()
    {
        tipCalc.tipPercentage = Float(tipPercentageSlider.value)
        tipCalc.amountBeforeTax = ((amountBeforeTaxTextField.text) as NSString).floatValue
        tipCalc.calculateTip()
        updateUI()
    }
    
    func updateUI()
    {
        resultLabel.text = String(format: "Total: $%0.2f Tip: $%0.2f", arguments: [tipCalc.totalAmount, tipCalc.tipAmount])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func amountBeforeTaxTextFieldChanged(sender: AnyObject) {
        println("text field value changed")
    }
    



}










