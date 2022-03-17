//
//  ViewController.swift
//  HelloCafe2
//
//  Created by JUNGMIN KIM on 2022/03/16.
//

import UIKit

class ViewController: UIViewController {
    //값을 바꾸고 싶은 변수를 넣어준다.
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var cafeImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // test2
    }
    //버튼을 눌렀을때 호출할 함수로 넣어 동작 결과를 만들어준다.
    @IBAction func buttonTouched(_ sender: Any) {
        self.titleLabel.text = "가입 완료"
        self.cafeImageView.image =
        UIImage(named: "green-tea.jpg")
    }
}


