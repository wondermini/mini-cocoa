//
//  main.swift
//  2WeekFriday
//
//  Created by JUNGMIN KIM on 2022/03/28.
//

import Foundation

print("Hello, World!")

if divisor([5,9,7,10],5) == [5,10]{
    print("divisor test is success")
}else{
    print("divisor test is fail")
}

if divisor([2,36,1,3],1) == [1,2,3,36]{
    print("divisor test is success")
}else{
    print("divisor test is fail")
}

if divisor([3,2,6],10) == [-1]{
    print("divisor test is success")
}else{
    print("divisor test is fail")
}
