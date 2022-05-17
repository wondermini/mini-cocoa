//
//  File.swift
//  twoSum
//
//  Created by JUNGMIN KIM on 2022/05/17.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    //key,value 모두 정수
    // 두번째 돌때 dict = [2,0]
    var dict = [Int: Int]()
   //두번째 돌때 (1,7)
    for (i, num) in nums.enumerated() {
        // index = dict[9-7] 즉 dict[2]가 있느냐? 2의 인덱스 값이 0
        if let index = dict[target - num] {
            // index 값 0, i란? 7의 index 값 1
            return [index, i]
        }
        dict[num] = i
    }
    // error
    return [0]
}
