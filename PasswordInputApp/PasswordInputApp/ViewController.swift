//
//  ViewController.swift
//  PasswordInputApp
//
//  Created by JUNGMIN KIM on 2022/03/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var levelColor: UILabel!
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
        }else if passwordChar.isSubset(of: lettersLower) && passwordChar.isSubset(of: lettersUpper)  && passwordChar.isSubset(of: nums) && password.count>=8 {
            return 4
        }else if passwordChar.isSubset(of: lettersLower) && passwordChar.isSubset(of: lettersUpper) && passwordChar.isSubset(of: symbol) && password.count>=8 {
            return 5
        }else{
            return 3
        }
    }

    @IBAction func confirm(_ sender: Any) {
        let passwordLevel = passwordValidator(password: inputpassword.text ?? "")
        var passwordLevelMsg = ""
        
        switch  passwordLevel{
        case 1:
            levelColor.backgroundColor = UIColor.red
            passwordLevelMsg = "아주 약한 암호"
        case 2:
            levelColor.backgroundColor = UIColor.orange
            passwordLevelMsg = "약한 암호"
        case 4:
            levelColor.backgroundColor = UIColor.blue
            passwordLevelMsg = "보통 암호"
        case 5:
            levelColor.backgroundColor = UIColor.green
            passwordLevelMsg = "강한 암호"
        default:
            levelColor.backgroundColor = UIColor.yellow
            passwordLevelMsg = "아주 강한 암호"
            
        }
        
        levelOfPassword.text = passwordLevelMsg
        
        
       
        
        
        
    }
    
}
