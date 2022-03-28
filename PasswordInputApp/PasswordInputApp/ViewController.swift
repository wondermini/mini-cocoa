//
//  ViewController.swift
//  PasswordInputApp
//
//  Created by JUNGMIN KIM on 2022/03/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var levelOfPassword: UILabel!
    @IBOutlet var inputpassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func confirm(_ sender: Any) {
        //inputpassword.text는 입력창에 넣은 값을 말한다. 없을때는 zerolengthString이다.
        let passwordLevel = passwordValidator(password: inputpassword.text ?? "")
        self.levelOfPassword.text = String(format: "%1d Level", passwordLevel)
        self.levelOfPassword.text = String(format: "")
    }
}
