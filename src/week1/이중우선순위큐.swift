//
//  이중우선순위큐.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/11/22.
//

import Foundation

func solution(_ operations:[String]) -> [Int] {
    
    var queue: [Int] = []
    
    for operation in operations {
        let operationArray = operation.split(separator: " ")
        let command = operationArray.first!
        let number = Int(operationArray.last!)!
        
        if command == "I" {
            queue.append(number)
        } else if command == "D" && queue.isEmpty == false {
            queue = number == 1 ? queue.sorted(by: <) : queue.sorted(by: >)
            let re = queue.popLast()
        }
    }
    return queue.isEmpty ? [0, 0] : [queue.max()!, queue.min()!]
}
