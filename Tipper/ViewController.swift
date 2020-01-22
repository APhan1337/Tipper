//
//  ViewController.swift
//  Tipper
//
//  Created by Alex V Phan on 1/21/20.
//  Copyright © 2020 Alex V Phan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen:Double = 0
    
    @IBOutlet weak var roundButton1: UIButton!
    @IBOutlet weak var roundButton2: UIButton!
    @IBOutlet weak var roundButton3: UIButton!
    @IBOutlet weak var roundButton4: UIButton!
    @IBOutlet weak var roundButton5: UIButton!
    @IBOutlet weak var roundButton6: UIButton!
    @IBOutlet weak var roundButton7: UIButton!
    @IBOutlet weak var roundButton8: UIButton!
    @IBOutlet weak var roundButton9: UIButton!
    @IBOutlet weak var roundButtonDecimal: UIButton!
    @IBOutlet weak var roundButton0: UIButton!
    @IBOutlet weak var roundButtonBackspace: UIButton!
    @IBOutlet weak var roundButtonAC: UIButton!
    
    @IBOutlet weak var billAmount: UILabel!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.applyRoundCorner(roundButton1)
        self.applyRoundCorner(roundButton2)
        self.applyRoundCorner(roundButton3)
        self.applyRoundCorner(roundButton4)
        self.applyRoundCorner(roundButton5)
        self.applyRoundCorner(roundButton6)
        self.applyRoundCorner(roundButton7)
        self.applyRoundCorner(roundButton8)
        self.applyRoundCorner(roundButton9)
        self.applyRoundCorner(roundButtonDecimal)
        self.applyRoundCorner(roundButtonAC)
        
        roundButton0.layer.cornerRadius = 35
        roundButtonBackspace.layer.cornerRadius = 30
    tipControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(red: 0, green: (145 / 255.0), blue: (147 / 255.0), alpha: 1.0)], for: .normal)
    }

    func applyRoundCorner(_ object:AnyObject) {
        object.layer.cornerRadius = object.frame.size.width / 2
        object.layer.masksToBounds = true
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        billAmount.text = billAmount.text! + String(sender.tag - 1)
        numberOnScreen = Double(billAmount.text!)!
    }
    
    @IBAction func clear(_ sender: UIButton) {
        // AC button
        if sender.tag == 11 {
            billAmount.text = ""
            numberOnScreen = 0.0
        }
        // Backspace button
        else if sender.tag == 12 {
            let temp = (billAmount.text!)
            billAmount.text = String(temp.dropLast())
        }
    }
    
    @IBAction func decimal(_ sender: UIButton) {
        let temp = billAmount.text!
        if billAmount.text == "" {
            billAmount.text = "0."
        }
        else if billAmount.text!.contains(".") {
            billAmount.text = temp;
        }
        else {
            billAmount.text = String(temp) + "."
        }
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        // let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = numberOnScreen * tipPercentages[tipControl.selectedSegmentIndex]
        let total = numberOnScreen + tip
        
        // Update the tip and total labels
        // tipAmount.text = "$\(tip)"
        tipAmount.text = String(format: "$%.2f", tip)
        //total.text = "$\(total)"
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}
/*
class BillLabel: UILabel {
    
    override var text: String? {
        didSet {
            if let text = text {
                print("Text changed.")
            }
            else {
                print("Text not changed.")
            }
        }
    }
}
*/
