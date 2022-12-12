//
//  옹알이 (2).swift
//  nahee
//
//  Created by 김나희 on 12/11/22.
//

import Foundation

func solution(_ babbling:[String]) -> Int {
    let words: [String] = ["aya", "ye", "woo", "ma"]
    var res = 0
    for babble in babbling {
        var tmp = babble
        for word in words {
            if item.contains(word + word) {
                break
            } else {
                tmp = tmp.replacingOccurrences(of: word, with: " ")
            }
        }
        if tmp.replacingOccurrences(of: " ", with: "") == "" {
            res += 1
        }
    }
    return res
}

