import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    // 진도 100 -> 배포 가능
    // progresses의 순서는 배포 우선 순위
    
    let queue = Array(zip(progresses, speeds)) // 배포 대기중
    
    // 각 작업의 작업 완료 일수 배열 - map 연산 시간복잡도 O(n)
    let days = queue.map {
        ((100 - Double($0.0)) / Double($0.1)).rounded(.up)
    }
    
    // days = [7, 3, 9]
    
    var complete = days[0] // 기준 일수
    var release = 0 // 배포 작업 수
    var result = [Int]() // 결과 배열
    
    for d in days { // 시간복잡도 O(n)
        if d <= complete { // 기준 일수보다 작업 완료 일수가 작거나 같을 경우
            release += 1 // 배포 작업 수 +1
        } else { // 기준 일수보다 작업 완료 일수가 클 경우
            result.append(release) // 결과 배열에 배포 작업 수 추가
            
            // 기준 변경
            complete = d
            release = 1 // 현재 작업(d)
        }
    }
    
    result.append(release) // days 배열 순회 완료 시 마지막 release는 결과 배열에 추가되지 않으므로 추가
    
    return result
}
