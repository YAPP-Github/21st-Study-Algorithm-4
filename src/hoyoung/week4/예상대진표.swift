//
//  예상대진표.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/12/13.
//

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    var numA = a
    var numB = b
    
    func getSequence(num: Int) -> Int {
        if num % 2 == 0 {
            return num / 2
        } else {
            return num / 2 + 1
        }
    }

    repeat {
        numA = getSequence(num: numA)
        numB = getSequence(num: numB)
        answer += 1
    } while numA != numB

    return answer
}
