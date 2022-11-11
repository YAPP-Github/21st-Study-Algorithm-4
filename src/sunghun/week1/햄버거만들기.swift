import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var stack: [Int] = []
    var result = 0
    var count = 0
    
    for value in ingredient {
        stack.append(value)
        count = stack.count

        if stack.count < 4 {
            continue
        }
        
        if Array(stack[count-4..<count]) == [1, 2, 3, 1] {
            stack = Array(stack[0..<count-4])
            result += 1
        }
    }
    return result
}
