//
//  main.swift
//  211229
//
//  Created by JUNGMIN KIM on 2021/12/29.
//

import Foundation

print("Hello, World!")

if strStr("hello", "ll") == 2 {
    print("strStr test is success")
}else {
    print("strStr test is fail")
}

if strStr("aaaaa", "bba") == -1 {
    print("strStr test is success")
}else {
    print("strStr test is fail")
}

if strStr("", "") == 0 {
    print("strStr test is success")
}else {
    print("strStr test is fail")
}
