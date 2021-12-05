//
//  main.swift
//  211205
//
//  Created by JUNGMIN KIM on 2021/12/05.
//

import Foundation

print("Hello, World!")

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
