import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var stack = [Int]()
    var answer = 0
    for i in ingredient {
        stack.append(i)
        if stack.count >= 4 && stack[stack.count-4..<stack.count] == [1,2,3,1] {
            answer += 1
            for _ in 0..<4 {
                stack.popLast()
            }
        }
    }
    return answer
}
