//
//  숫자게임.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/12/12.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var sortedA = a.sorted()
    var sortedB = b.sorted()
    var result = 0
    print("sortedA", sortedA)
    print("sortedB", sortedB)
    
    for value in sortedB {
        if value > sortedA[0] {
            result += 1
            sortedA.removeFirst()
        }
        
        print("sortedA", sortedA)
        print("sortedB", sortedB)
    }
    
    return result
}
