import Foundation

func solution(_ s:String) -> Int{
    var stack = [Character]()
    
    for ch in s {
        if stack.isEmpty {
            stack.append(ch)
        }
        else {
            if stack.last == ch {
                stack.popLast()
            }
            else {
                stack.append(ch)
            }
        }
    }
    return stack.isEmpty ? 1 : 0
}
