import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = [[Int]]()
    for i in 0..<arr1.count { // arr1 행
        var arr = [Int]()
        for j in 0..<arr2[0].count { // arr2 열
            var calc = 0
            for k in 0..<arr2.count { // arr2 행
                calc += arr1[i][k] * arr2[k][j]
            }
            arr.append(calc)
        }
        answer.append(arr)
    }
    return answer
}
