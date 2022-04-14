


import Foundation


//reduce의 첫 번째 인자는 시작값이다. 즉 0으로 적어줄 경우, 0의 값을 가지고 연산을 하라는 것이다.

//그리고 두 번째 인자는 어떠한 연산을 할지에 대해 적어준다. +를 적으면 값을 하나씩 더하게 되는 것이고, -,+,/ 모두 적용 가능하다.

func aVeryBigSum(ar: [Int]) -> Int {
    return ar.reduce(0,+)
}
