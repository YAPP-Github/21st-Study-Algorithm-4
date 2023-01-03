//
//  콜라츠 추축.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/12/19.
//

import Foundation

func solution(n:Int) -> Int {
    
    var number = n
    var cycle = 0
    
    while cycle < 500 && number != 1 {
        if number % 2 == 0 {
            number /= 2
        } else {
            number = number * 3 + 1
        }
        cycle += 1
    }

    return cycle == 500 ? -1 : cycle
}
