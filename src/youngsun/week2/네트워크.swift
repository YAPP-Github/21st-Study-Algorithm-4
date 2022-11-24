import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var visited: [Bool] = Array(repeating: false, count: n)
    var answer = 0
    
    func DFS(_ v: Int) {
        visited[v] = true
        for i in 0..<n {
            if computers[v][i] == 1 && !visited[i] {
                DFS(i)
            }
        }
    }
    
    for i in 0..<n {
        if !visited[i] {
            DFS(i)
            answer += 1
        }
    }
    return answer
}
