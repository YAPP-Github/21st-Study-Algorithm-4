import Foundation

// 재귀함수로 풀이 -> 시간초과
func solution(_ n:Int) -> Int {
    var count = 0

    func cal(_ num: Int) {
        if num == n {
            count += 1
        }
        else if num < n {
            cal(num+1)
            cal(num+2)
        }
    }
    cal(1)
    cal(2)
    return count % 1234567
}

// dp로 풀이
func solution(_ n:Int) -> Int {
    var dp = Array(repeating: 0, count: n+1)
    if n < 3 {
        return n
    }
    dp[1] = 1
    dp[2] = 2
    
    for i in 3...n {
        dp[i] = (dp[i-2] + dp[i-1]) % 1234567
    }
    return dp[n]
}

