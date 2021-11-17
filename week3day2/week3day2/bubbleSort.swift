//
//  bubbleSort.swift
//  week3day2
//
//  Created by JUNGMIN KIM on 2021/11/17.

import Foundation

class BubbleSort {
    var unsortedArr: [Int]

    // init메소드로 class와 struct의 생성자(Contructor)를 만든다.
    init(arr: [Int]) {
        self.unsortedArr = arr
    }

    // isAscendding 에 true가 들어오면 오름차순 정렬을 수행. false면 내림차순정렬을 수행.
    func sorted(isAscending: Bool) -> [Int] {
        //
        var swapped: Bool = true
        var swapCounter = 0

        repeat {
            swapped = false
            for index in 1 ... unsortedArr.endIndex - 1 {
                
                // isAscendding = true면 오름차순 false면 내림차순
                if isAscending == true {
                    //오름차순 정렬
                    if unsortedArr[index-1] > unsortedArr[index] {
                        unsortedArr.swapAt(index-1, index)
                        swapped = true

                     
                    }
                } else {
                    //내림차순 정렬
                    if unsortedArr[index-1] < unsortedArr[index] {
                        unsortedArr.swapAt(index-1, index)
                        swapped = true

                    }
                }
                swapCounter += 1
                
            }
            //while다음에 오는 변수나 조건식이 true일 경우에만 계속 반복. false면 빠져나감.
        } while swapped
        
        print("swapCounter=\(swapCounter)")
        return unsortedArr
    }
}
