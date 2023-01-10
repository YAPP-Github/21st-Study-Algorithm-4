import Foundation

func solution(_ s:String) -> [Int] {
    var arr = [Character]()
    var answer = [Int]()
    var s = Array(s)
    for i in 0..<s.count {
        arr.contains(s[i]) ? answer.append(i - arr.lastIndex(of: s[i])!) : answer.append(-1)
        arr.append(s[i])
    }
    return answer
}
