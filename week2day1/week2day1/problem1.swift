//
//  problem1.swift
//  week2day1
//
//  Created by JUNGMIN KIM on 2021/11/08.
//

import Foundation

// p1-1
struct ArrayPractice {
    func printArray(array: [[Int]]) {
        for innerArray in array {
            for item in innerArray {
                print(item, terminator: " ") // item + 공백(화이트 스페이스)
            }
            print() // 줄바꿈
        }
    }

    func fillArray(lines: Int) -> [[Int]] {
        // 전체 값을 넣어줄 빈 2차원 배열 선언
        var resultArray = [[Int]]()
        // 각 행의 첫번째 값을 보관할 변수. 첫번째 셀에 들어가는 값은 이 변수에 +1이 됨.
        var eachLinefirstValue = 0
        // 전체 for문
        for j in 1...lines {
            // 각각의 행을 저장할 빈 배열 선언
            var tempArray = [Int]()

            // cellValue는 셀 값을 지정하기 위한 변수임. 이 변수에 각 행의 첫번째 값(eachLinefirstValue)을 가져와서 넣어줌
            var cellValue = eachLinefirstValue

            // 각각의 행을 출력해 주는 for문
            for _ in 1...j {
                // 셀 값을 +1 함
                cellValue += 1
                // 행을 저장하는 배열 에다가 셀 값을 추가해 줌
                tempArray.append(cellValue)
            }
            // 전체값을 저장할 2차원 배열에 행(tempArray) 배열을 추가함
            resultArray.append(tempArray)
            // 라인의 첫 값을 +5 함
            eachLinefirstValue += 5
        }
        return resultArray
    }

    // p1-2

    func setBoolArray(line: Int) -> [[Bool]] {
        var resultArray = [[Bool]]()
        for i in 1...line {
            var tempArray = [Bool]()
            for _ in i..<line {
                tempArray.append(false)
            }
            for _ in 1...i {
                tempArray.append(true)
            }
            resultArray.append(tempArray)
        }
        return resultArray
    }

    func printArray(array: [[Bool]], newChar: Character) {
        //행 갯수 만큼 반복
        for i in 0..<array.count {
            // 한 행의 열 갯수
            for j in 0..<array[i].count {
                //[i][j]
                if array[i][j] == true{
                    print(newChar, terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print()
        }
    }
}
