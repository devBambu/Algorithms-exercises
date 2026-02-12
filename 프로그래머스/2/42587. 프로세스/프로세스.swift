import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities.enumerated().map { (location: $0, priority: $1) }
    
    while !queue.isEmpty {
        let run = queue.removeFirst()
        let maxPriority = queue.map { $0.priority }.max() ?? 0 // 프로세스 대기열 큐에서 가장 큰 우선순위
        
        if run.priority < maxPriority { // 큐에 우선순위 큰 게 남아있는지?
            // 있을 경우 - 큐에 재삽입
            queue.append(run)
        } else {
            // 없을 경우 - while문 탈출
            if run.location == location { 
                // 기존 프로세스 수 - 대기중인 프로세스 수 = 현재 실행중인 프로세스 순서
                return priorities.count - queue.count 
            }
        }
    }
    return 0
}