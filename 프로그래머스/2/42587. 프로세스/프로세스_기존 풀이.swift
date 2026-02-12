import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities.enumerated().map { (location: $0, priority: $1) }
    var turn: [(location: Int, priority: Int)] = []
    
    while !queue.isEmpty {
        let run = queue.removeFirst()
        
        if queue.contains(where: { $0.priority > run.priority }) { // 큐에 우선순위 큰 게 남아있는지?
            // 있을 경우 - 큐에 재삽입
            queue.append(run)
        } else {
            // 없을 경우 - turn 배열에 삽입
            turn.append(run)
        }
    }
    return (turn.firstIndex(where: { $0.location == location }) ?? 0) + 1
}
