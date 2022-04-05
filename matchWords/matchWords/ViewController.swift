//
//  ViewController.swift
//  matchWords
//
//  Created by JUNGMIN KIM on 2022/04/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var wordTextField: UITextField!
    @IBOutlet var secondInputWord: UILabel!
    @IBOutlet var firstInputWord: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func confirmButton(_ sender: Any) {
        if secondInputWord.text == "" || secondInputWord.text == nil {
            wordTextField.placeholder = "입력해주세요"
        }
        wordTextField.textAlignment = NSTextAlignment.center
    }
}
