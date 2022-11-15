//
//  이중우선순위큐.swift
//  nahee
//
//  Created by 김나희 on 11/14/22.
// https://school.programmers.co.kr/learn/courses/30/lessons/42628?language=swift

import Foundation

func solution(_ operations:[String]) -> [Int] {
    var arr = [Int]()
    
    for operation in operations {
        let op = operation.split(separator: " ")
        if op[0] == "I" {
            arr.append(Int(op[1])!)
        } else if !arr.isEmpty {
            arr.sort()
            if Int(op[1]) == 1 {
                arr.removeLast()
            } else {
                arr.removeFirst()
            }
        }
    }
    
    arr.sort() // 여기에 sort가 없으면 I만 나온 case는 정렬이 안됨
    let max: Int = arr.last != nil ? arr.last! : 0
    let min: Int = arr.first != nil ? arr.first! : 0
    
    return [max, min]
}
