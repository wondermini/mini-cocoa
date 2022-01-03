//
//  main.swift
//  220103
//
//  Created by JUNGMIN KIM on 2022/01/03.
//

import Foundation

if plusOne([1,2,3]) == [1,2,4] {
    print("plusOne test is success")
}else {
    print("plusOne test is fail")
}


if plusOne([4,3,2,1]) == [4,3,2,2] {
    print("plusOne test is success")
}else {
    print("plusOne test is fail")
}


if plusOne([9]) == [1,0] {
    print("plusOne test is success")
}else {
    print("plusOne test is fail")
}
