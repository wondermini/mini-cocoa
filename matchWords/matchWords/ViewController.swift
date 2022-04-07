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
        let allWords = ["동해물과", "백두산이", "마르고", "닮도록", "하느님이", "보우하사", "우리나라", "만세", "무궁화", "삼천리"]
        if secondInputWord.text == "" || secondInputWord.text == nil {
            firstInputWord.text?.removeAll()
        }
        wordTextField.textAlignment = NSTextAlignment.center
        if wordTextField.text == secondInputWord.text {
            secondInputWord.textColor = UIColor.darkGray
            firstInputWord.text = (wordTextField.text ?? "")
            secondInputWord.text = (allWords.randomElement() ?? "")
            wordTextField.text?.removeAll()
        } else {
            wordTextField.text!.removeAll()
            secondInputWord.textColor = UIColor.red
        }
    }
}
