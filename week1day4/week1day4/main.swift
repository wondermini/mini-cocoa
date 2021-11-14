//
//  main.swift
//  week1day4
//
//  Created by JUNGMIN KIM on 2021/11/04.
//

import Foundation

struct Factorial {
    func loop(max: Int) -> Int {
        var result = 1
        for i in 2 ... max {
            result *= i
        }
        return result
    }

    func recursive(n: Int) -> Int {
        if n == 1 {
            return 1
        }
        let result = recursive(n: n - 1) * n
        return result
    }
}

var fact = Factorial()

print(fact.loop(max: 3))
print(fact.recursive(n: 4))

var someInts = [Int]()
someInts.append(3)
someInts = []

var threeDoubles = Array(repeating: 0.0, count: 3)
threeDoubles+=[2.5, 3.5]

var shoppingList = ["Eggs", "Milk"]
shoppingList+=["Baking Powder"]
shoppingList.insert("Maple Syrup", at: 0)
shoppingList.remove(at: 1)
for item in shoppingList {
    print(item)
}
