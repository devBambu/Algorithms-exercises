import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    // 진도 100 -> 배포 가능
    // progresses의 순서는 배포 우선 순위
    
    let queue = Array(zip(progresses, speeds)) // 배포 대기중
    
    let days = queue.reduce(into: [Int]()) { arr, q in
        var num = 0 // 작업 완료 소요 일수
        var progress = q.0 // 진행도
                                 
        while progress < 100 {
            progress += q.1
            num += 1
        }
                                
        arr.append(num)
    }
    
    // [7, 3, 9]
    print(days)
    
    var complete = days[0] // 기준 일수
    var release = 0
    var result = [Int]()
    
    for d in days {
        if d <= complete {
            release += 1
        } else {
            result.append(release)
            release = 1
            complete = d
        }
    }
    result.append(release)
    
    return result
}