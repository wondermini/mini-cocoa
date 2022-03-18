//
//  ViewController.swift
//  measurementApp
//
//  Created by JUNGMIN KIM on 2022/03/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func convertButton(_ sender: Any) {
        var result = ""
        let app = MeasureApp()
        if inputTextField.text != "" {
            let array = inputTextField.text?.split(separator: " ")
            result = app.convertMeasurement(inputValue: Double(array![0])!,
                                            fromUnit: Unit.init(rawValue: String(array![1]))!,
                                            toUnit: Unit.init(rawValue: String(array![2]))!)
            
            self.printLabel.text = result
        }
    }
    

}

