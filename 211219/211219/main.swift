//
//  main.swift
//  211219
//
//  Created by JUNGMIN KIM on 2021/12/19.
//

import Foundation

var mysolution = Solution()
if mysolution.isPalindrome(121) == true{
    print("isPalindrome test is success")
}else{
    print("isPalindrome test is fail")
}


if mysolution.isPalindrome(-121) == false{
    print("isPalindrome test is success")
}else{
    print("isPalindrome test is fail")
}

if mysolution.isPalindrome(10) == false{
    print("isPalindrome test is success")
}else{
    print("isPalindrome test is fail")
}

if mysolution.isPalindrome(0) == true{
    print("isPalindrome test is success")
}else{
    print("isPalindrome test is fail")
}
