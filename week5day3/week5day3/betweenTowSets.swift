//
//  betweenTowSets.swift
//  week5day3
//
//  Created by JUNGMIN KIM on 2021/12/01.
//

// Write your code here
/*
    let result: Int = b.filter { $0 % a[0] == 0 && $0 % a[1] == 0 }.count
 */
/*
 var result = 0
  for i in b {ㅣ
      if a.count == a.filter({ i % $0 == 0 }).count {
          result += 1
      }
  }
   */

// O(n log(n)) solution.
// 1. find the LCM of all the integers of array A. LCM (최소공배수) 두 자연수의 곱/ 최대 공약수
// 2. find the GCD of all the integers of array B. GCD or HCF (최대공약수) 두 자연수의 공통된 약수 중 가장 큰 수
// 3. Count the number of multiples of LCM that evenly divides the GCD.

// Numbers must be between LCM of a and HCF of b
// Numbers must be a divisor of HCF of b
// Numbers must be divisible by LCM of a
// Solution can be found here
//참고 https://velog.io/@kerri/Swift-HackerRank-Between-Two-Set
import Foundation

func getGCD(inputArr: [Int]) -> Int {
    if inputArr.count == 1 || inputArr[1] == 0 {
        return inputArr[0]
    } else {
        return getGCD(inputArr: [inputArr[1], inputArr[0] % inputArr[1]])
    }
}

func getLCM(inputArr: [Int]) -> Int {
    if inputArr.count == 1 {
        return inputArr[0]
    }
    return getMultiple(inputArr: inputArr) / getGCD(inputArr: inputArr)
}

func getMultiple(inputArr: [Int]) -> Int {
    var result = 0
    if inputArr.count == 2 {
        result = inputArr[0] * inputArr[1]

    } else {
        result = 1
    }
    return result
}

func getTotalX(a: [Int], b: [Int]) -> Int {
    let lcm = getLCM(inputArr: a)
    let gcd = getGCD(inputArr: b)
    print("lcm:\(lcm)  gcd:\(gcd)")
    let rangeOftmpB = 1 ... gcd
    let tmpBDivisor = rangeOftmpB.filter { gcd % $0 == 0 }
    let result = tmpBDivisor.filter { $0 % lcm == 0 }
    return result.count
}
