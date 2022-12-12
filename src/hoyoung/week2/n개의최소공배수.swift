//
//  n개의최소공배수.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/11/22.
//

// 최소공배수, 최대공약수

import Foundation

func solution(arr: [Int]) -> Int {
    
    return arr.reduce(1) { lcm(a: $0, b: $1) }
}

func gcd(a: Int, b: Int) -> Int {
    let modify = a % b
    return modify == 0 ? min(a, b) : gcd(a: b, b: modify)
}

func lcm(a: Int, b: Int) -> Int {
    return a * b / gcd(a: a, b: b)
}


let result = solution(arr: [2,6,8,14])
print(result)
