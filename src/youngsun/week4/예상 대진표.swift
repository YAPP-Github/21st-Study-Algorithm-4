import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0
    var b = b
    var a = a
    
    while a != b {
        b = Int(ceil(Double(b)/2)) // 3.5면 4로 올림
        a = Int(ceil(Double(a)/2))
        //print(a, b)
        answer += 1
    }

    return answer
}
