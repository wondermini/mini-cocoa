//
//  68644.swift
//  Week2Day7
//
//  Created by JUNGMIN KIM on 2021/11/14.
//


//인덱스 번호 바로 이후의 모든 인덱스들과 더하기를 반복한다. 제일 마지막 인덱스는 모든 조합이 반복되는 이유로 제외함.
//전체 숫자 갯수 보다 하나 작게 루프가 생성됨.
//중복되는 덧셈값을 제거하기 위해서 Set을 사용함.
//Array로 변환 후 sorted로 정렬해서 반환.
import Foundation

func solution68644(_ numbers: [Int]) -> [Int] {
    var tempSet = Set<Int>()
    for i in 0..<numbers.count-1 {
        for j in i + 1..<numbers.count {
            tempSet.insert(numbers[i] + numbers[j])
        }
    }

    return Array(tempSet).sorted()
}
