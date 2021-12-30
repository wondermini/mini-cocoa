//
//  main.swift
//  211230
//
//  Created by JUNGMIN KIM on 2021/12/30.
//

import Foundation

if searchInsert([1,3,5,6], 5) == 2 {
    print("searchInsert test is success")
}else {
    print("searchInsert test is fail")
}


if searchInsert([1,3,5,6], 2) == 1 {
    print("searchInsert test is success")
}else {
    print("searchInsert test is fail")
}


if searchInsert([1,3,5,6], 7) == 4 {
    print("searchInsert test is success")
}else {
    print("searchInsert test is fail")
}
