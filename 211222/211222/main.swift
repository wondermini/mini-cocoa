//
//  main.swift
//  211222
//
//  Created by JUNGMIN KIM on 2021/12/22.
//

import Foundation


extension Double {
    var squared: Double {
        return self * self
    }
}

let myValue: Double = 3.0
print(myValue.squared)
print(3.0.squared)


var mySolution = Solution()
if mySolution.romanToInt("III") == 3 {
    print("romanToInt test is success")
} else {
    print("romanToInt test is fail")
}

if mySolution.romanToInt("LVIII") == 58 {
    print("romanToInt test is success")
} else {
    print("romanToInt test is fail")
}

if mySolution.romanToInt("MCMXCIV") == 1994 {
    print("romanToInt test is success")
} else {
    print("romanToInt test is fail")
}
