//
//  명예의전당.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/12/12.
//

import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var arr: [Int] = []
    var result: [Int] = []
    
    for (index, value) in score.enumerated() {
        if index < k {
            arr.append(value)
        } else {
            if value > arr[0] {
                arr.removeFirst()
                arr.append(value)
            }
        }
        arr = arr.sorted()
        result.append(arr[0])
    }
    
    return result
}

