import Foundation

// 풀이1. 유클리드 호제법
func solution(_ arr:[Int]) -> Int {
    var prev = arr[0]
    for i in 1..<arr.count {
        prev = lcm(prev, arr[i])
    }
    
    return prev
    }
    
// 최소공배수
func lcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / gcd(a, b)
}
    
// 최대공약수
func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    var r = 0
    
    while b != 0 {
        r = a % b
        a = b
        b = r
    }
    
    return a
}

// 풀이2. 효율성 떨어짐

//func solution(_ arr:[Int]) -> Int {
//    var answer = arr.max()!
//whileLoop: while true {
//    for a in arr {
//            if answer % a != 0 {
//                answer += 1
//                continue whileLoop
//            }
//        }
//        break
//    }
//    return answer
//}

