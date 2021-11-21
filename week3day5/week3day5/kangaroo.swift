//
//  NumberLineJumps  .swift
//  week3day5
//
//  Created by JUNGMIN KIM on 2021/11/21.
//

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    // Write your code here
    let yes = "YES"
    let no = "NO"
    
    if v2 >= v1 {
        return no
    }
    
    var k1 = x1
    var k2 = x2
    
    while k1 < k2 {
        
        k1 += v1
        k2 += v2
        
        if k1 == k2 {
            return yes
        }
    }
    
    return no
}
