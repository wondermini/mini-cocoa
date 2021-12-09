//
//  drawingBook.swift
//  211209
//
//  Created by JUNGMIN KIM on 2021/12/09.
//

import Foundation

func pageCount(n: Int, p: Int) -> Int {
    // Write your code here
    let half = n/2
    if half < p{
        if n % 2 == 0 {
            return ((n + 1)-p)/2
        }
        return (n-p)/2
        
    }else if half > p{
        return p/2
    }
    return p/2
}
 
