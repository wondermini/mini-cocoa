//
//  markRandomly.swift
//  2WeekFriday
//
//  Created by JUNGMIN KIM on 2022/03/30.
//

import Foundation

func markRandomly(_ answers: [Int]) -> [Int] {
    let firstPattern = [1, 2, 3, 4, 5]
    let secondPattern = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdPattern = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var firstScore = 0
    var firstIndex = 0
    
    var secondScore = 0
    var secondIndex = 0
    
    var thirdScore = 0
    var thirdIndex = 0
    
    for i in answers {
        if i == firstPattern[firstIndex] {
            firstScore += 1
        }
        
        if firstIndex == firstPattern.count - 1 {
            firstIndex = 0
        } else {
            firstIndex += 1
        }
        
        if i == firstPattern[firstIndex] {
            firstScore += 1
        }

        if i == secondPattern[secondIndex] {
            secondScore += 1
        }
        
        if secondIndex == secondPattern.count - 1 {
            thirdIndex = 0
        } else {
            secondIndex += 1
        }
        
        if i == secondPattern[secondIndex] {
            secondScore += 1
        }

        if i == thirdPattern[thirdIndex] {
            thirdScore += 1
        }
        
        if thirdIndex == thirdPattern.count - 1 {
            thirdIndex = 0
        } else {
            thirdIndex += 1
        }
        
        if i == thirdPattern[thirdIndex] {
            thirdScore += 1
        }
    }
    
    var allscoreArr = [Int]()
    allscoreArr.append(firstScore)
    allscoreArr.append(secondScore)
    allscoreArr.append(thirdScore)
    let largestScore = allscoreArr.max()
    
    var resultArray = [Int]()
    if firstScore == largestScore {
        resultArray.append(1)
    }
    
    if secondScore == largestScore {
        resultArray.append(2)
    }
    
    if thirdScore == largestScore {
        resultArray.append(3)
    }
    
    return resultArray
}
