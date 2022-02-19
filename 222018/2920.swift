//
//  2920.swift
//  222018
//
//  Created by JUNGMIN KIM on 2022/02/19.
//

import Foundation

func checkingProgram(eightNums: String){
    let TrimWhiteSpace = eightNums.trimmingCharacters(in: .whitespaces)
    let numsArr = eightNums.compactMap{$0.wholeNumberValue}
    if numsArr == [1,2,3,4,5,6,7,8]{
        print("ascending")
    }else if numsArr == [8,7,6,5,4,3,2,1]{
        print("descending")
    }else{
        print("mixed")
    }
}
