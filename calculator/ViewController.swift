//
//  ViewController.swift
//  calculator
//
//  Created by mcmorro1 on 9/10/17.
//  Copyright © 2017 mcmorro1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculation:String = ""
    var operationinprogress:String = ""
    var currentoperation:String = ""
    var number1:String = "";
    var number2:String = "";
    var answer:Double = 0;
    var operation:Int = 0;

    @IBOutlet weak var CalculationDisplay: UILabel!
    @IBOutlet weak var AnswerDisplay: UILabel!
    
    @IBAction func Numbers(_ sender: UIButton) {
        if operationinprogress == "yes"
        {
            number2 += sender.currentTitle!
            calculation += number2
            CalculationDisplay.text = "\(number1)\(currentoperation)\(number2)"
        }
        else{
            number1 += sender.currentTitle!
            calculation += number1
            CalculationDisplay.text = number1
        }
    }
    
    @IBAction func Operations(_ sender: UIButton) {
    operationinprogress = "yes"
        currentoperation = sender.currentTitle!
        switch currentoperation {
        case "/":
            operation=1
            calculation += currentoperation
            CalculationDisplay.text = "\(number1)\(currentoperation)"
        case "X":
            operation=2
            calculation += currentoperation
            CalculationDisplay.text = "\(number1)\(currentoperation)"
        case "-":
            operation=3
            calculation += currentoperation
            CalculationDisplay.text = "\(number1)\(currentoperation)"
        case "+":
            operation=4
            calculation += currentoperation
            CalculationDisplay.text = "\(number1)\(currentoperation)"
        case "=":
            if operation == 1
            {
                answer = Double(number1)! / Double(number2)!
                AnswerDisplay.text = String(answer)
                calculation = ""
            }
            else if operation == 2
            {
                answer = Double(number1)! * Double(number2)!
                AnswerDisplay.text = String(answer)
                calculation = ""
            }
            else if operation == 3
            {
                answer = Double(number1)! - Double(number2)!
                AnswerDisplay.text = String(answer)
                calculation = ""
            }
            else if operation == 4
            {
                answer = Double(number1)! + Double(number2)!
                AnswerDisplay.text = String(answer)
                calculation = ""
            }
            else{
            }
        case "Clear":
            number1 = "";
            number2 = "";
            answer = 0;
            calculation = ""
            CalculationDisplay.text = ""
            AnswerDisplay.text = ""
            operationinprogress = "no"

        default:
            CalculationDisplay.text = "error"
        }
    
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

