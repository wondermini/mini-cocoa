//
//  regularExpressionMatching.swift
//  211219
//
//  Created by JUNGMIN KIM on 2021/12/20.
//

import Foundation


    
    func isMatch(_ s: String,_ p: String)->Bool {
        
        // convert strings into array of strings for technical purposes
        let s = Array(s)
        let p = Array(p)
        
        // create a matrix to calculate and store results efficiently
        // we add +1 because we consider an empty string as first character in both string and pattern
        var result = Array(repeating: Array(repeating: false, count: p.count+1), count: s.count+1)
        
        // 0,0 is initialized as true because in case of empty string and empty pattern the match is true
        result[0][0] = true
        
        for j in 1...p.count {
            // incase we have a * anywhere after index 0 (we are going for 1 base index number approach which means our j has initial value of 1 instead of 0. So to access the correct character we use j-1 instead of j. In case pattern has * at j-1 location we will set the value at current location in matrix as [j-2]. This is helpfull in cases where empty string can match regex e.g. a*b*
            result[0][j] = j>1 && p[j-1] == "*" && result[0][j-2]
        }
        if s.count == 0 {
            return result[s.count][p.count]
        }
        for i in 1...s.count {
            for j in 1...p.count {
                if p[j-1] == "*" {
                    // in case of 0 count of preceeding character use the result before that
                    // otherwise check if last character was a match. if yes check if current character matches the pattern or current pattern is "."
                    result[i][j] = result[i][j-2] ||
                        (result[i-1][j] && (p[j-2] == s[i-1] || p[j-2] == "."))
                }
                else {
                    // first check if regex is valid till now this is done by checking value at (i-1,j-1)
                    // if it is valid check if current character matches current regex or current regex is "."
                    result[i][j] = result[i-1][j-1] && (s[i-1] == p[j-1] || p[j-1] == ".")
                }
            }
        }
        return result[s.count][p.count]
    }

