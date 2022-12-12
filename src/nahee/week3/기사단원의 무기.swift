//
//  기사단원의 무기.swift
//  nahee
//
//  Created by 김나희 on 11/28/22.
//

import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var res = 0
    (1...number).forEach { num in
        res += numberOfDivisors(num, limit, power)
    }
    
    return res
}

func numberOfDivisors(_ num:Int, _ limit:Int, _ power:Int) -> Int {
    var cnt = 0
    
    for i in 1...Int(sqrt(Double(num))) {
        if i*i == num {
            cnt += 1
        } else if num % i == 0 {
            cnt += 2
        }
        
        if cnt > limit {
            return power
        }
    }

    return cnt
}
