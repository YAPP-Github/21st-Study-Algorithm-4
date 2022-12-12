//
//  명예의 전당 (1).swift
//  nahee
//
//  Created by 김나희 on 12/11/22.
//

import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var arr = [Int]()
    var res = [Int]()
    
    for i in score {
        if arr.count >= k {
            if arr.contains(where: { $0 < i }){
                arr.append(i)
                arr.sort(by: >)
                arr.removeLast()
            }
            res.append(arr.last!)
        } else {
            arr.append(i)
            arr.sort(by: >)
            res.append(arr.last!)
        }
    }
    
    return res
}

// 더 나은 풀이
func solution1(_ k:Int, _ score:[Int]) -> [Int] {
    var arr = [Int]()
    var res = [Int]()
    
    for i in 0..<score.count {
        arr.append(score[i])
        arr.sort(by: >)
        
        if i >= k {
            arr.removeLast()
        }
        
        if let min = arr.last {
            res.append(min)
        }
    }
    return res
}
