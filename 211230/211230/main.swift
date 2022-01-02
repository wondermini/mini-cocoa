//
//  main.swift
//  211230
//
//  Created by JUNGMIN KIM on 2021/12/30.
//

import Foundation

print(Int.min)

if searchInsert([1, 3, 5, 6], 5) == 2 {
    print("searchInsert test is success")
} else {
    print("searchInsert test is fail")
}

if searchInsert([1, 3, 5, 6], 2) == 1 {
    print("searchInsert test is success")
} else {
    print("searchInsert test is fail")
}

if searchInsert([1, 3, 5, 6], 7) == 4 {
    print("searchInsert test is success")
} else {
    print("searchInsert test is fail")
}

// maxSubArray
// if maxSubArray([-2,1,-3,4,-1,2,1,-5,4]) == 6 {
//    print("maxSubArray test is success")
// }else {
//    print("maxSubArray test is fail")
// }
//
// if maxSubArray([1]) == 1 {
//    print("maxSubArray test is success")
// }else {
//    print("maxSubArray test is fail")
// }

if maxSubArray([5, 4, -1, 7, 8]) == 23 {
    print("maxSubArray test is success")
} else {
    print("maxSubArray test is fail")
}

// lengthOfLastWord
if lengthOfLastWord("Hello World") == 5 {
    print("lengthOfLastWord test is success")
} else {
    print("lengthOfLastWord test is fail")
}

if lengthOfLastWord("fly me   to   the moon ") == 4 {
    print("lengthOfLastWord test is success")
} else {
    print("lengthOfLastWord test is fail")
}

if lengthOfLastWord("luffy is still joyboy") == 6 {
    print("lengthOfLastWord test is success")
} else {
    print("lengthOfLastWord test is fail")
}
