import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let xy = brown + yellow
    for x in 3...xy {
        for y in stride(from: x, to: 1, by: -1) {
            if x < y {
                continue
            }
            else if x*y == xy{
                if 2*x + 2*(y-2) == brown {
                    return [x,y]
                }
            }
        }
    }
    return []
}
