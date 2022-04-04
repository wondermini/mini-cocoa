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
    func passwordValidator(password: String) -> Int{
        let passwordArr = Array(password)
        let passwordChar = CharacterSet(charactersIn:password)
        let lettersLower = CharacterSet.lowercaseLetters
        let lettersUpper = CharacterSet.uppercaseLetters
        let nums = CharacterSet.decimalDigits
        let symbol = CharacterSet(charactersIn: "~!@#$%^&*()-+<>?\\:")
        if passwordArr.self.allSatisfy({$0.isNumber}) == true && password.count<8{
            return 1
        }else if passwordArr.self.allSatisfy({$0.isLetter}) == true && password.count<8{
             return 2
        }else if passwordChar.isSubset(of: lettersLower) && passwordChar.isSubset(of: lettersUpper) && passwordChar.isSubset(of: nums) && password.count>=8{
            return 4
        }else if passwordChar.
        }else{
            return 3
        }
    }

    @IBAction func confirm(_ sender: Any) {

    }
}
