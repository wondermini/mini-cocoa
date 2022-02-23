//
//  re2920.swift
//  222018
//
//  Created by JUNGMIN KIM on 2022/02/23.
//

import Foundation

//eightNums의 범위를 정수로 한다면?
func reCheckingProgram(eightNums: String){
    let strArr = eightNums.components(separatedBy: " ")
    let numsArr = strArr.map{ Int($0)! }
    print (numsArr)
    if numsArr == numsArr.sorted(by: <){
        print("ascending")
    }else if numsArr == numsArr.sorted(by: >){
        print("descending")
    }else{
        print("mixed")
    }
}
