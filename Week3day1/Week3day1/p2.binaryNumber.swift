//
//  p2.binaryNumber.swift
//  Week3day1
//
//  Created by JUNGMIN KIM on 2021/11/15.
//

import Foundation

struct BinaryNumber {
    private var values = [String]()
    init(with total: Int) {
        let max = Int(pow(2.0, Double(total)))
        for i in 0 ..< max {
            values.append(pad(string: String(i, radix: 2), toSize: total))
        }
    }

    // 주어진 길이만큼 앞에 0을 채워 넣음
    func pad(string: String, toSize: Int) -> String {
        var padded = string
        for _ in 0 ..< (toSize - string.count) {
            padded = "0" + padded
        }
        return padded
    }

    func find(by bitcount: Int) -> [String] {
        var result = [String]()
        for i in values {
            var counter = 0
            for j in Array(i) {
                if j == "1" {
                    counter += 1
                }
            }
            if counter == bitcount {
                result.append(i)
            }
        }
        return result
    }

    func printValues() {
        print(values)
    }
}
