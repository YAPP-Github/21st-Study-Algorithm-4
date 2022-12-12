import Foundation

func solution(_ n:Int) -> Int {

    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else if n == 2 {
        return 2
    } else {
        var array = [0, 1, 2]

        for _ in 3...n {
            array.append((array[array.count-2] + array[array.count-1]) % 1234567)
        }

        return array.last!
    }
}

print(solution(3))
