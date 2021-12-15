//
//  main.swift
//  211215
//
//  Created by JUNGMIN KIM on 2021/12/15.
//

import Foundation

var mysolution = Solution()
if mysolution.twoSum([2,7,11,15],9) == [0,1]{
    print("twoSum test is success")
}else{
    print("twoSum test is fail")
}

if mysolution.twoSum([3,2,4],6) == [1,2]{
    print("twoSum test is success")
}else{
    print("twoSum test is fail")
}

if mysolution.twoSum([3,3],6) == [0,1]{
    print("twoSum test is success")
}else{
    print("twoSum test is fail")
}

