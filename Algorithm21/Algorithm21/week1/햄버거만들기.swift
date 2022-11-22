//
//  햄버거만들기.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/11/22.
//

import Foundation

func solution(_ ingredient:[Int]) -> Int {

    let hamburger = [1, 2, 3, 1]
    var stack: [Int] = []
    var hamburgerCount = 0
    
    for ingredient in ingredient {
        stack.append(ingredient)
        
        if stack.suffix(4) == hamburger {
            stack.removeLast(4)
            hamburgerCount += 1
        }
    }
    return hamburgerCount
}
