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
    var number1:Double = 0;
    var number2:Double = 0;
    var answer:Double = 0;
    var operation:Int = 0;

    @IBOutlet weak var CalculationDisplay: UILabel!
    @IBOutlet weak var AnswerDisplay: UILabel!
    
    @IBAction func Numbers(_ sender: UIButton) {
        if operationinprogress == "yes"
        {
    calculation += sender.currentTitle!
    CalculationDisplay.text = calculation
            number2 = Double(calculation)!
        }
        else{
            calculation += sender.currentTitle!
            CalculationDisplay.text = calculation
        }
    }
    
    @IBAction func Operations(_ sender: UIButton) {
    operationinprogress = "yes"
        currentoperation = sender.currentTitle!
        switch currentoperation {
        case "/":
            number1 = Double(calculation)!
            calculation = ""
            operation=1
            CalculationDisplay.text = currentoperation
        case "X":
            number1 = Double(calculation)!
            calculation = ""
            operation=2
            CalculationDisplay.text = currentoperation
        case "-":
            number1 = Double(calculation)!
            calculation = ""
            operation=3
            CalculationDisplay.text = currentoperation
        case "+":
            number1 = Double(calculation)!
            calculation = ""
            operation=4
            CalculationDisplay.text = currentoperation
        case "=":
            if operation == 1
            {
                answer = number1 / number2
                AnswerDisplay.text = String(answer)
                CalculationDisplay.text = ""
                calculation = ""
            }
            else if operation == 2
            {
                answer = number1 * number2
                AnswerDisplay.text = String(answer)
                CalculationDisplay.text = ""
                calculation = ""
            }
            else if operation == 3
            {
                answer = number1 - number2
                AnswerDisplay.text = String(answer)
                CalculationDisplay.text = ""
                calculation = ""
            }
            else if operation == 4
            {
                answer = number1 + number2
                AnswerDisplay.text = String(answer)
                CalculationDisplay.text = ""
                calculation = ""
            }
            else{
            }
        case "Clear":
            number1 = 0;
            number2 = 0;
            answer = 0;
            calculation = ""
            CalculationDisplay.text = ""
            AnswerDisplay.text = ""

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

