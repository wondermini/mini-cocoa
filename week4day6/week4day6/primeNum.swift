//
//  primeNum.swift
//  week4day6
//
//  Created by JUNGMIN KIM on 2021/11/27.
//

import Foundation

func solution(_ n: Int) -> Int {
    // 소수 카운터
    var counter = 0

    // 2부터 n까지 반복
    Loop: for i in 2...n {
        // 소수 체크
        for j in 2..<Int(sqrt(Double(i)))+1 {
            // i를 j로 나눠서 0이면 자기자신이 아닌 수로 나눠지므로 솟수가 아님
            if j != i, i % j == 0 {
                continue Loop
            }
        }

        // 체크결과 소수 플래그가 true이면 소수 카운터를 1 증가시킴
        counter += 1
    }
    return counter
}
