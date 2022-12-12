//
//  숫자 게임.swift
//  nahee
//
//  Created by 김나희 on 12/11/22.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var res = 0
    var a = a.sorted(by: >),
        b = b.sorted(by: >)

    for i in a {
        if i >= b[0] {
            continue
        } else {
            res += 1
            b.removeFirst()
        }
    }
    
    return res
}
