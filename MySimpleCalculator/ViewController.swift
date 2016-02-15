//
//  ViewController.swift
//  MySimpleCalculator
//
//  Created by Steven Wong on 15/02/2016.
//  Copyright © 2016 Steven CK Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberPanel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func number1Pressed(sender: AnyObject) {
        numberPressed("1")
    }
    
    @IBAction func number2Pressed(sender: AnyObject) {
        numberPressed("2")
    }
    
    @IBAction func number3Pressed(sender: AnyObject) {
        numberPressed("3")
    }
    
    @IBAction func number4Pressed(sender: AnyObject) {
        numberPressed("4")
    }
    
    @IBAction func number5Pressed(sender: AnyObject) {
        numberPressed("5")
    }
    
    @IBAction func number6Pressed(sender: AnyObject) {
        numberPressed("6")
    }
    
    @IBAction func number7Pressed(sender: AnyObject) {
        numberPressed("7")
    }
    
    @IBAction func number8Pressed(sender: AnyObject) {
        numberPressed("8")
    }
    
    @IBAction func number9Pressed(sender: AnyObject) {
        numberPressed("9")
    }
    
    @IBAction func number0Pressed(sender: AnyObject) {
        numberPressed("0")
    }
    
    @IBAction func numberCPressed(sender: AnyObject) {
        clearNumberPanel()
    }
    
    func numberPressed(number: String) {
        if (numberPanel.text == "0") {
            numberPanel.text = number
        } else {
            numberPanel.text = numberPanel.text! + number
        }
        
    }
    
    func clearNumberPanel() {
        numberPanel.text = "0"
    }
    
    


}

