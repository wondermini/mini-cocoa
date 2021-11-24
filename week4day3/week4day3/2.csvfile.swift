//
//  2.CVSfile.swift
//  week4day3
//
//  Created by JUNGMIN KIM on 2021/11/24.
//


import Foundation
// data file path: /Users/wondermini/Google Drive/project/cocoa/mini-cocoa/week4day3/week4day3/data.csv
class Csv {
    //딕셔너리의 배열로 자료구조 선언
    var data = [[String: Any]]()
    func readCsv(path: String) {
        // path에서 text file 읽어오기
        let contents = try! String(contentsOfFile: path)
        // Split the file into separate lines
        let lines = contents.split(separator: "\n")
        // Split the first row into separate words
        let keys = lines[0].split(separator: ",")
        //두번째...마지막row까지 한줄 한줄 빈 딕셔너리선언 후 공백을 깎아낸 값을 Key와 함께 넣어준다.
        for i in 1 ..< lines.count {
            var item = [String: Any]()
            let values = lines[i].split(separator: ",")
            for j in 0 ..< values.count {
                item[String(keys[j]).trimmingCharacters(in: .whitespaces)] = String(values[j]).trimmingCharacters(in: .whitespaces)
                // item[key[j]] = lineArr[j]
            }
            self.data.append(item)
        }
    }

    func printData() {
        for item in self.data {
            print(item)
        }
    }

    func add(name: String, email: String, language: String, grade: Int) {
        var item = [String: Any]()
        item["name"] = name
        item["email"] = email
        item["language"] = language
        item["grade"] = grade
        self.data.append(item)
    }
}
