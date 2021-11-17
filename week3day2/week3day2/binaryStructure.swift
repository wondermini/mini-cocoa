//
//  binaryStructure.swift
//  week3day2
//
//  Created by JUNGMIN KIM on 2021/11/16.
//

import Foundation

struct BinaryNumber {
    
    // private values 배열
    private var values = [String]()
    
    //var count computed property는 values 배열의 count를 return 한다.
    var count: Int {
        return values.count
    }
    
    //초기화 생성 함수 init(with: total : Int)는 전체 비트 개수를 입력 받는다.
    init(with total: Int) {
        //total만큼의 비트수를 가진 최대수 계산
        let max = Int(pow(2.0, Double(total))) - 1
        
        //0부터 max까지의 모든 2진수를 string배열로 생성.
        for i in 0 ... max {
            //2진수 생성
            var tempInt = Int(String(i, radix: 2)) ?? 0
            //total만큼의 0으로 채워넣은 2진수 문자열 생성
            var tempStr = String(format: "%0\(total)d", tempInt)
            values.append(tempStr)
        }
    }

    func find(by bitcount: Int) -> [String] {
        var result = [String]()
        for i in values {
            var counter = 0
            //한 글자 한 글자씩 반복해서 가져옴
            for j in Array(i) {
                if j == "1" {
                    counter += 1
                }
            }
            //앞 for에서 세어준 1의 갯수가 bitcount와 같으면 결과 배열에 넣어준다.
            if counter == bitcount {
                result.append(i)
            }
        }
        return result
    }

    //values는 private이기 때문에 외부에서 접근이 불가능하여 print를 위한 메소드를 추가함
    func printValues() {
        print(values)
    }
}
