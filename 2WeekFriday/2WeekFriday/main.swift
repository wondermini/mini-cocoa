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



if chooseTwoNums([2,1,3,4,1]) == [2,3,4,5,6,7]{
    print("chooseTwoNums test is success")
}else{
    print("chooseTwoNums test is fail")
}

if chooseTwoNums([5,0,2,7]) == [2,5,7,9,12]{
    print("chooseTwoNums test is success")
}else{
    print("chooseTwoNums test is fail")
}


if markRandomly([1,2,3,4,5]) == [1]{
    print("markRandomly test is success")
}else{
    print("markRandomly test is fail")
}

if markRandomly([1,3,2,4,2]) == [1,2,3]{
    print("markRandomly test is success")
}else{
    print("markRandomly test is fail")
}


if guessWhatDay(5, 24) == "TUE"{
    print("guessWhatDay test is success")
}else{
    print("guessWhatDay test is success")
}
