//
//  햄버거 만들기.swift
//  nahee
//
//  Created by 김나희 on 11/14/22.
// https://school.programmers.co.kr/learn/courses/30/lessons/133502?language=swift

import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var cnt = 0
    var stack = [Int]()
    let hambuger = [1,2,3,1]
    
    for i in ingredient {
        stack.append(i)
        
        if stack.count >= 4 && Array(stack[stack.count-4...stack.count-1]) == hambuger {
            cnt += 1
            stack = stack.count > 4 ? Array(stack[0...stack.count-5]) : []
        }
    }
    
    return cnt
}

/**
- stack.count-4...stack.count-1 대신 -> suffix(4) 방식
- stack = stack.count > 4 ? Array(stack[0...stack.count-5]) : [] 대신 -> removeLast(4) 방식
- 위의 두 방식을 이용하면 배열의 갯수 따로 고려 안해도 된다.
**/
