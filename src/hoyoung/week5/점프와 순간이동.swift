//
//  점프와 순간이동.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/12/12.
//

import Foundation

func solution(num: Int) -> Int {
    var result = 0
    var number = num
    
    if num == 0 {
        return 0
    }
    
    while (number/2) > 0 {
        if number % 2 == 1 {
            print(number)
            result += 1
        }
        number /= 2
    }
    
    return result + 1
}
