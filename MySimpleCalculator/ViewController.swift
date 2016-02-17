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
    var prevNumOnPanel : Int = 0
    var currNumOnPanel : Int = 0
    var totalInMemory : Int = 0
    // var operatorPressed : Bool = false
    var currentOperatorPressed : Int = 0
    var lastOperatorPressed : Int = 0
    
    let EQUALS = 1
    let PLUS = 2
    
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
        totalInMemory = 0
        prevNumOnPanel = 0
        currNumOnPanel = 0
    }
    
    
    @IBAction func plusPressed(sender: AnyObject) {
        currentOperatorPressed = PLUS
        compute()
    }
    
    @IBAction func equalPressed(sender: AnyObject) {
        currentOperatorPressed = EQUALS
        compute()
    }
    
    func compute() {
        if currentOperatorPressed == PLUS {
            prevNumOnPanel = Int(numberPanel.text!)!
            
            // if previous press was not an operator
            // then we process the addition in memory
            if lastOperatorPressed==0 {
                lastOperatorPressed = PLUS
                totalInMemory = totalInMemory + prevNumOnPanel
                numberPanel.text = "\(totalInMemory)"
            }
                // but if the previous key press was equals
                // it means the addition is starting from what is
                // already on the panel. Hence we keep what is
                // shown on the panel as the total in memory
            else if lastOperatorPressed == EQUALS {
                totalInMemory = prevNumOnPanel
            }
        } else if currentOperatorPressed == EQUALS {
            if lastOperatorPressed == 0 {
                lastOperatorPressed = EQUALS
                prevNumOnPanel = Int(numberPanel.text!)!
                totalInMemory = totalInMemory + prevNumOnPanel
                numberPanel.text = "\(totalInMemory)"
                // reset the total in memory
                prevNumOnPanel = 0
                totalInMemory = 0
            }
        }
    }
    
    func numberPressed(number: String) {
        
        // clear the panel if an operator was pressed before this
        if lastOperatorPressed != 0 {
            numberPanel.text = ""
            lastOperatorPressed = 0
        }
        
        // if the number panel is showing 0, then just show the number pressed
        if (numberPanel.text == "0") {
            numberPanel.text = number
        } else {
            numberPanel.text = numberPanel.text! + number
            currNumOnPanel =   Int(numberPanel.text!)!
        }
        
    }
    
    func clearNumberPanel() {
        numberPanel.text = "0"
        currNumOnPanel = 0
    }
    
    


}

