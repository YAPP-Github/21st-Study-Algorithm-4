//
//  N개의 최소공배수.swift
//  nahee
//
//  Created by 김나희 on 11/22/22.
//

import Foundation

func solution(_ arr:[Int]) -> Int {
    return arr.reduce(1) { lcm($0, $1) }
}

// 최소공배수
func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

// 최대 공약수
func gcd(_ a: Int, _ b: Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}
