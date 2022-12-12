//
//  단어 변환.swift
//  nahee
//
//  Created by 김나희 on 11/29/22.
//

import Foundation

func solution(_ begin: String, _ target: String, _ words: [String]) -> Int {
    var check = Array(repeating: 0, count : words.count)
    var answer = Int.max
    
    func dfs(_ start: String, _ count: Int) {
        if start == target {
            answer = min(answer,count)
            return
        }
        for i in 0..<words.count {
            if check[i] == 0 && zip(start,words[i]).filter({$0 != $1}).count == 1  {
                check[i] = 1
                dfs(words[i], count+1)
                check[i] = 0
            }
        }
    }
    
    dfs(begin, 0)
    
    return answer == Int.max ? 0 : answer
}
