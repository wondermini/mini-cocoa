//
//  main.swift
//  211216
//
//  Created by JUNGMIN KIM on 2021/12/16.
//

import Foundation

//var isDarkMode : Bool = false
//var title : String = !isDarkMode ? "다크모드가 아닙니다." : "다크모드 입니다."
//print("title: \(title)")
////title: 다크모드가 아닙니다.

var mySolution = Solution()
if mySolution.lengthOfLongestSubstring("abcabcbb") == 3{
    print("lengthOfLongestSubstring test success")
}else{
    print("lengthOfLongestSubstring test fail")
}

if mySolution.lengthOfLongestSubstring("bbbbb") == 1{
    print("lengthOfLongestSubstring test success")
}else{
    print("lengthOfLongestSubstring test fail")
}

if mySolution.lengthOfLongestSubstring("pwwkew") == 3{
    print("lengthOfLongestSubstring test success")
}else{
    print("lengthOfLongestSubstring test fail")
}

if mySolution.lengthOfLongestSubstring("au") == 2{
    print("lengthOfLongestSubstring test success")
}else{
    print("lengthOfLongestSubstring test fail")
}
