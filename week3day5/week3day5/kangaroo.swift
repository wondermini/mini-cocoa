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
    for jumpNum in 1...10000 {
        if x1+(v1*jumpNum) == x2+(v2*jumpNum) {
            return yes
        }
    }
    
    return no
}
