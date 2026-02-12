import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities.enumerated().map { (location: $0, priority: $1) }
    var count = 0
    
    while !queue.isEmpty {
        let run = queue.removeFirst()
        let maxPriority = queue.map { $0.priority }.max() ?? 0
        if run.priority < maxPriority { // 큐에 우선순위 큰 게 남아있는지?
            // 있을 경우 - 큐에 재삽입
            queue.append(run)
        } else {
            // 없을 경우 - count 1 추가
            count += 1
            if run.location == location { break } // 탈출문 추가하면 while 다 안돌아도됨
        }
    }
    return count
}