
func solution(_ num:Int) -> Int {
    var count = 0
    var answer = 0
    var num = num
    while true {
        count += 1
        if count >= 500 {
            return -1
        }
        
        if num == 1 {
            return answer
        }
        if num % 2 == 0 {
            num /= 2
        }
        else {
            num = num*3 + 1
        }
        answer += 1
    }
}
