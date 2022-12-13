mport Foundation

func solution(_ n:Int) -> Int
{
    var ans: Int = 0
    var n: Int = n
    while n > 0 {
        if n % 2 == 1 { // 홀수면 한칸이동
            n -= 1
            ans += 1
        }
        n /= 2 // 순간이동
        if n <= 0 {
            break
        }
    }
    return ans
}
