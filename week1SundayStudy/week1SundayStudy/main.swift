//
//  main.swift
//  week1SundayStudy
//
//  Created by JUNGMIN KIM on 2021/11/07.
//

import Foundation

print("Hello, World!")

// enum은
enum 학점 {
    case a, b, c, d, f
}

var x = true
var gradeDic = [학점.a: 90, 학점.b: 80, 학점.c: 70, 학점.d: 60]
print(gradeDic[학점.b] ?? 0)

var aSet: Set = [11, 12, 13]
aSet.contains(12)

let http404Error = (statusCode: 404, statusMessage: "Not Found")
print("the status code is \(http404Error.statusCode)")

struct Resolution {
    var width = 0
    var height = 0
}

let someResolution = Resolution()

struct 닝겐 {
    var 이름 = ""
    var 성별 = ""
}

var 남편 = 닝겐(이름: "정봉봉", 성별: "남자")
남편.이름 = "공유"

print(남편.이름)
print("내 남편은 이제부터 \(남편.이름)다")

// P1.
// 1-1
struct Rectangle {
    var leftTopX: Float
    var leftTopY: Float
    var rightBottomX: Float
    var rightBottomY: Float
    func printRect() {
        print("leftTop:\((leftTopX, leftTopY)),rigtTop:\((rightBottomX, leftTopY)),leftBottom:\((leftTopX, rightBottomY)),rigtBottom:\((rightBottomX, rightBottomY))")
    }

    // 1-3
    func printArea() {
        let width = rightBottomX - leftTopX
        let height = leftTopY - rightBottomY
        print("Area = \(width * height)")
    }

    // 1-5
    func printCenter() {
        let centerX = (rightBottomX + leftTopX) / 2
        let centerY = (rightBottomY + leftTopY) / 2
        print((centerX, centerY))
    }
}

// 1-2
// var rect = Rectangle(leftTopX: 5, leftTopY: 11, rightBottomX: 15, rightBottomY: 4)
rect.printRect()
rect.printArea()
// 1-4
var rect = Rectangle(leftTopX: 4.5, leftTopY: 10.5, rightBottomX: 15, rightBottomY: 3.5)
rect.printCenter()
// p2.
// 2-1
struct Mypoint {
    var myX: Float
    var myY: Float
    // 2-2
    func printPoint() {
        print((myX, myY))
    }

    // 2-3
    func getDistanceTo(toPoint: Mypoint) -> Float {
        let distance = sqrt(pow(myX - toPoint.myX, 2) + pow(myY - toPoint.myY, 2))
        return distance
    }
}

var pointA = Mypoint(myX: 2.5, myY: 15.8)
pointA.printPoint()
var pointB = Mypoint(myX: 15, myY: 12.2)
print(pointA.getDistanceTo(toPoint: pointB))
print(pointB.getDistanceTo(toPoint: pointA))

var temperature = 10
if temperature < 15 {
    print("아우 추워. 겉옷을 챙기세요")
}

// Prints "아우 추워. 겉옷을 챙기세요"

temperature = 40
if temperature > 30 {
    print("더운 날씨에요. 티셔츠만 입어도 될꺼에요")
} else {
    print("쌀쌀할 수 있어요")
}

// Prints "더운 날씨에요. 티셔츠만 입어도 될꺼에요"

// p.구구단
func gugu(dan: Int) {
    for i in 1...9 {
        print("\(dan) x \(i) = \(dan * i)")
    }
}

func makeAll() {
    for j in 1...9 {
        gugu(dan: j)
        print()
    }
}

gugu(dan: 2)
makeAll()

func makeGugu(maxDan: Int) {
    for i in 1...maxDan {
        gugu(dan: i)
        print()
    }
}

makeGugu(maxDan: 100)

// 수 연습문제
// p1.
func printXY(max: Int) {
    for _ in 1...max {
        var line = ""
        for j in 1...max {
            line += String(j)
            line += " "
        }
        print(line)
    }
}

printXY(max: 3)
printXY(max: 5)

// p2.

func printLeftTree(lines: Int) {
    for i in 1...lines {
        for _ in 1...i {
            print("🎈", terminator: "")
        }
        print()
    }
}

printLeftTree(lines: 5)

// p3.

func printRightTree(lines: Int) {
    for i in 1...lines {
        for _ in 0 ..< lines - i {
            print("  ", terminator: "")
        }

        for _ in 1...i {
            print("🎈", terminator: " ")
        }
        print()
    }
}

printRightTree(lines: 4)

// p4

func printCenterTree(lines: Int) {
    for i in 1...lines {
        for _ in 0 ..< lines - i {
            print(" ", terminator: "")
        }

        for _ in 1...i {
            print("🎈", terminator: " ")
        }
        print()
    }
}

printCenterTree(lines: 5)

// p5.
func printNumbers(lines: Int) {
    var num = 0
    for i in 1...lines {
        for _ in 1...i {
            num += 1
            print(String(format: "%-2d", num), terminator: " ")
        }
        print()
    }
}

printNumbers(lines: 5)

print()

// p6.
func printSquare(lines: Int) {
    var num = 0
    for _ in 1...lines {
        for _ in 1...lines {
            num += 1
            print(String(format: "%2d", num), terminator: " ")
        }
        print()
    }
}

printSquare(lines: 5)

print()

// p7.
func printReverse(lines: Int) {
    var num = 0

    for i in 1...lines {
        if i % 2 == 1 { // 홀수일경우
            for _ in 1...lines {
                num += 1
                print(String(format: "%2d", num), terminator: " ")
            }
        } else { // 짝수일경우
            num += lines
            for _ in 1...lines {
                print(String(format: "%2d", num), terminator: " ")
                num -= 1
            }
            num += lines
        }
        print()
    }
}

printReverse(lines: 4)

func printReverse2(lines: Int) {
    var numArr = [[Int]]()
    for row in 0...lines-1 {
        numArr.append([Int]())
        numArr[row] = Array<Int>((row*lines)+1...((row+1)*lines))
    }

    print(numArr
    )
    for row in 1...lines {
        if row % 2 == 1 { // 홀수일경우
            for column in 1...lines {
                print(String(format: "%2d", numArr[row-1][column-1]), terminator: " ")
            }
        } else { // 짝수일경우
            for column in (1...lines).reversed() {
                print(String(format: "%2d", numArr[row-1][column-1]), terminator: " ")
            }
        }
        print()
    }
}

printReverse2(lines: 4)
