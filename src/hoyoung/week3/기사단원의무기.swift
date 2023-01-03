//
//  기사단원의무기.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/11/28.
//

// stride와 ...의 차이를 알게됨
// 약수를 효율적으로 구하는 함수

import Foundation

func solution(number:Int, limit:Int, power:Int) -> Int {
    var result = 0
    
    for i in 1...number {
        let divisor = getDivisorCount(i)
        if divisor > limit {
            result += power
        } else {
            result += divisor
        }
        
    }
    return result
}

func getDivisorCount(_ number: Int) -> Int {
    var count = 0
    for i in 1...Int(sqrt(Double(number))) {
        if number % i == 0 {
            if (i * i) == number {
                count += 1
            } else {
                count += 2
            }
            
        }
    }
    return count
}
