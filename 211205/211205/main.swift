//
//  main.swift
//  211205
//
//  Created by JUNGMIN KIM on 2021/12/05.
//

import Foundation

//birthday
if birthday(s: [1,2,1,3,2], d: 3, m: 2) == 2 {
    print("birthday test is success")
} else {
    print("birthday test is fail")
}

if birthday(s: [1,1,1,1,1,1], d: 3, m: 2) == 0 {
    print("birthday test is success")
} else {
    print("birthday test is fail")
}

//divisibleSumPairs
if divisibleSumPairs(n: 6, k: 5, ar: [1,2,3,4,5,6]) == 3 {
    print("divisibleSumPairs test is success")
} else {
    print("divisibleSumPairs test is fail")
}

if divisibleSumPairs(n: 6, k: 3, ar: [1,3,2,6,1,2]) == 5 {
    print("divisibleSumPairs test is success")
} else {
    print("divisibleSumPairs test is fail")
}
