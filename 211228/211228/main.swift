//
//  main.swift
//  211228
//
//  Created by JUNGMIN KIM on 2021/12/28.
//

import Foundation

print("Hello, World!")
var nums = [3, 2, 2, 3]
if removeElement(&nums, 3) == 2 {
    print("removeElement test is success")
} else {
    print("removeElement test is fail")
}

nums = [0, 1, 2, 2, 3, 0, 4, 2]
if removeElement(&nums, 2) == 5 {
    print("removeElement test is success")
} else {
    print("removeElement test is fail")
}
