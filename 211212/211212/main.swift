//
//  main.swift
//  211212
//
//  Created by JUNGMIN KIM on 2021/12/12.
//

import Foundation

var input = [[4,8,2],[4,5,7],[6,1,6]]
var result = formingMagicSquare(s: input)
if result == 4 {
    print("formingMagicSquare test success")
} else {
    print("formingMagicSquare test fail. result=\(result)")
}
