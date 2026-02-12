import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities.enumerated().map { (location: $0, priority: $1) }
    var count = 0
    
    while !queue.isEmpty {
        let run = queue.removeFirst()
        let maxPriority = queue.map { $0.priority }.max() ?? 0 // 프로세스 대기열 큐에서 가장 큰 우선순위
        
        if run.priority < maxPriority { // 큐에 우선순위 큰 게 남아있는지? -- contains가 아닌 비교 연산자로 비교하여 더 빠르게 연산 가능
            // 있을 경우 - 큐에 재삽입
            queue.append(run)
        } else {
            // 없을 경우 - while문 탈출
            count += 1
            if run.location == location { break }
        }
    }
    return count
}

// count 변수가 없는 풀이
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
            // 기존 프로세스 수 - 대기중인 프로세스 수 = 현재 꺼낸 프로세스의 실행 순서
                return priorities.count - queue.count
            }
        }
    }
    return 0
}
