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
    
    func numberPressed(number: String) {
        numberPanel.text = numberPanel.text! + number
    }


}

