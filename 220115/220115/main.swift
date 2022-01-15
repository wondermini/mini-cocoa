//
//  main.swift
//  220115
//
//  Created by JUNGMIN KIM on 2022/01/15.
//

import Foundation

if generate(5) == [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]] {
    print("generate test is success")
}else {
    print("generate test is fail")
}


if generate(1) == [[1]] {
    print("generate test is success")
}else {
    print("generate test is fail")
}
