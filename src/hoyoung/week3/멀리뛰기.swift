//
//  멀리뛰기.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/11/28.
//

import Foundation

// 시간 초과
//
//func solution(_ n:Int) -> Int {
//
//    var count = 0
//
//    func recursive(arr: [Int]) {
//
//        for i in [1, 2] {
//            var array = arr
//            array.append(i)
//            let arrSum = array.reduce(0) { $0 + $1 }
//            print("i", i)
//            print("array", array)
//
//            if arrSum == n {
//                count += 1
//                return
//            } else if arrSum > n {
//               return
//            } else {
//                recursive(arr: array)
//            }
//        }
//    }
//
//    recursive(arr: [])
//
//    return count % 1234567
//}

// 속도 초과와 패턴이 보일때는
// dp를 사용하자

func solution(_ n:Int) -> Int {
    var result = [1, 2]
    
    var i = 0
    while result.count < n {
        result.append((result[i] + result[i+1]) % 1234567)
        i += 1
    }
    
    return result[n-1]
}
