//
//  ViewController.swift
//  calculateApp
//
//  Created by JUNGMIN KIM on 2021/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var first = ""
    var second = ""
    var fuction = ""
    var result = 0.0
    var userInput = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var calculatorDisplay: UILabel!
    
    @IBAction func clearButton(_ sender: Any) {
        first = ""
        second = ""
        userInput = ""
        result = 0.0
        calculatorDisplay.text = "0"
    }
    @IBAction func divideButton(_ sender: Any) {
        fuction = "/"
        first = userInput
        userInput = ""
    }
    @IBAction func multiplyButton(_ sender: Any) {
        fuction = "*"
        first = userInput
        userInput = ""
    }
    @IBAction func minusButton(_ sender: Any) {
        fuction = "-"
        first = userInput
        userInput = ""
    }
    @IBAction func plusButton(_ sender: Any) {
        fuction = "+"
        first = userInput
        userInput = ""
    }
    @IBAction func equalButton(_ sender: Any) {
       second = userInput
        var firstInput = 0.0
        var secondInput = 0.0
        firstInput = Double(first)!
        secondInput = Double(second)!
        if(fuction == "+"){
            result = firstInput + secondInput
            calculatorDisplay.text = String(result)
        }
        else if(fuction == "-"){
            result = firstInput - secondInput
            calculatorDisplay.text = String(result)
        }
        else if(fuction == "*"){
            result = firstInput * secondInput
            calculatorDisplay.text = String(result)
        }
        else{
            result = firstInput / secondInput
            calculatorDisplay.text = String(result)
        }
    }
    @IBAction func decimalButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "."
        calculatorDisplay.text! += userInput
        
    }
    @IBAction func zeroButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "0"
        calculatorDisplay.text = userInput
    }
    @IBAction func oneButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "1"
        calculatorDisplay.text! += userInput
    }
    @IBAction func twoButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "2"
        calculatorDisplay.text! += userInput
    }
    @IBAction func threeButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "3"
        calculatorDisplay.text! += userInput
    }
    @IBAction func fourButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "4"
        calculatorDisplay.text! += userInput
    }
    @IBAction func fiveButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "5"
        calculatorDisplay.text! += userInput
    }
    @IBAction func sixButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "6"
        calculatorDisplay.text! += userInput
    }
    @IBAction func sevenButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "7"
        calculatorDisplay.text! += userInput
    }
    @IBAction func eightButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "8"
        calculatorDisplay.text! += userInput
    }
    @IBAction func nineButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "9"
        calculatorDisplay.text! += userInput
    }
}

