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
    var sign1:String = "";
    var sign2:String = "";
    var neg:Double = -1;

    @IBOutlet weak var CalculationDisplay: UILabel!
    @IBOutlet weak var AnswerDisplay: UILabel!
    
    
    @IBAction func Sign(_ sender: UIButton) {
    if operationinprogress == "yes"
    {
        sign2 = "-"
        CalculationDisplay.text = "\(sign1)\(number1)\(currentoperation)\(sign2)"
        }
    else{
        sign1 = "-"
        CalculationDisplay.text = "\(sign1)"
        }
        
    }
    
    @IBAction func Numbers(_ sender: UIButton) {
        if operationinprogress == "yes"
        {
            number2 += sender.currentTitle!
            calculation += number2
            CalculationDisplay.text = "\(sign1)\(number1)\(currentoperation)\(sign2)\(number2)"
        }
        else{
            number1 += sender.currentTitle!
            calculation += number1
            CalculationDisplay.text = "\(sign1)\(number1)"
        }
    }
    
    @IBAction func Operations(_ sender: UIButton) {
    operationinprogress = "yes"
        currentoperation = sender.currentTitle!
        switch currentoperation {
        case "/":
            operation=1
            calculation += currentoperation
            CalculationDisplay.text = "\(sign1)\(number1)\(currentoperation)"
        case "X":
            operation=2
            calculation += currentoperation
            CalculationDisplay.text = "\(sign1)\(number1)\(currentoperation)"
        case "-":
            operation=3
            calculation += currentoperation
            CalculationDisplay.text = "\(sign1)\(number1)\(currentoperation)"
        case "+":
            operation=4
            calculation += currentoperation
            CalculationDisplay.text = "\(sign1)\(number1)\(currentoperation)"
        case "=":
            if operation == 1
            {
                if sign1==sign2
                {
                answer = Double(number1)! / Double(number2)!
                AnswerDisplay.text = String(answer)
                calculation = ""
                }
                else
                {
                answer = neg * Double(number1)! / Double(number2)!
                AnswerDisplay.text = String(answer)
                calculation = ""
                }
           
            }
            else if operation == 2
            {
                if sign1==sign2
                {
                    answer = Double(number1)! * Double(number2)!
                    AnswerDisplay.text = String(answer)
                    calculation = ""
                }
                else
                {
                    answer = neg * Double(number1)! * Double(number2)!
                    AnswerDisplay.text = String(answer)
                    calculation = ""
                }
                
            }
            else if operation == 3
            {
                if sign1=="" && sign2==""
                {
                    answer = Double(number1)! - Double(number2)!
                    AnswerDisplay.text = String(answer)
                    calculation = ""
                }
                else if sign1=="-" && sign2=="-"
                {
                    answer = neg * Double(number1)! - neg * Double(number2)!
                    AnswerDisplay.text = String(answer)
                    calculation = ""
                }
                else if sign1=="-" && sign2==""
                {
                    answer = neg * Double(number1)! - Double(number2)!
                    AnswerDisplay.text = String(answer)
                    calculation = ""
                }
                else if sign1=="" && sign2=="-"
                {
                    answer = Double(number1)! - neg * Double(number2)!
                    AnswerDisplay.text = String(answer)
                    calculation = ""
                }
                else
                {
                    AnswerDisplay.text = "error"
                }
            }
            else if operation == 4
            {
                if sign1=="" && sign2==""
                {
                    answer = Double(number1)! + Double(number2)!
                    AnswerDisplay.text = String(answer)
                    calculation = ""
                }
                else if sign1=="-" && sign2=="-"
                {
                    answer = neg * Double(number1)! + neg * Double(number2)!
                    AnswerDisplay.text = String(answer)
                    calculation = ""
                }
                else if sign1=="-" && sign2==""
                {
                    answer = neg * Double(number1)! + Double(number2)!
                    AnswerDisplay.text = String(answer)
                    calculation = ""
                }
                else if sign1=="" && sign2=="-"
                {
                    answer = Double(number1)! + neg * Double(number2)!
                    AnswerDisplay.text = String(answer)
                    calculation = ""
                }
                else
                {
                    AnswerDisplay.text = "error"
                }
                
            }
            else
            {
                CalculationDisplay.text = "error"
            }
        case "Clear":
            number1 = "";
            number2 = "";
            answer = 0;
            calculation = ""
            CalculationDisplay.text = ""
            AnswerDisplay.text = ""
            operationinprogress = "no"
            sign1 = ""
            sign2 = ""

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

