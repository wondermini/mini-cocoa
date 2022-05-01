//
//  codingExerciseDictionaries.swift
//  loveCalculator
//
//  Created by JUNGMIN KIM on 2022/04/30.
//

import Foundation

func exercise() {

    //Don't change this
    var stockTickers: [String: String] = [
        "APPL" : "Apple Inc",
        "HOG": "Harley-Davidson Inc",
        "BOOM": "Dynamic Materials",
        "HEINY": "Heineken",
        "BEN": "Franklin Resources Inc"
    ]
    
    //Write your code here.
stockTickers["WORK"] = "Slack Technologies Inc"
    stockTickers.updateValue("DMC Global Inc", forKey: "BOOM")

  
     //Don't modify this
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
}
 
