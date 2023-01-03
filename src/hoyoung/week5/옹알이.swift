//
//  옹알이.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/12/13.
//

import Foundation

func solution(babbling:[String]) -> Int {
    let arr = ["aya", "ye", "woo", "ma"]
    var result = 0

    for value in babbling {
        var v = value.map { String($0) }.reversed().joined()
        var popArr: [String] = []
        var lastValue = ""
        var flag = false
        while true {
            guard let popValue = v.popLast() else { break }
            
            popArr.append(String(popValue))
            let pop = popArr.joined()
            print(pop, flag)
            if arr.contains(pop) && pop != lastValue {
                flag = true
                lastValue = pop
                popArr = []
            } else {
                flag = false
            }
        }
        print("flag", value, flag)
        
        if flag == true {
            result += 1
        }
    }
    
    return result
}
