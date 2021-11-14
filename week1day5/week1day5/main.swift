//
//  main.swift
//  week1day5
//
//  Created by JUNGMIN KIM on 2021/11/05.
//

import Foundation

//두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
struct Problem1{
    func add(){
        print("더하기 - 정수 두 개를 가운데 공백을 넣어서 입력해 주세요:", terminator: "")
        let line = readLine()!
        let lineArr = line.components(separatedBy: " ")
        print(Int(lineArr[0])! + Int(lineArr[1])!)
    }
}

let problem = Problem1()
problem.add()

