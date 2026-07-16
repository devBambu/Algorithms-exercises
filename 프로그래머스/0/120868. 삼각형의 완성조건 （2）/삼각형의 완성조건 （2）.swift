import Foundation

func solution(_ sides:[Int]) -> Int {
    let max = sides.max()! // 매개변수 중 최댓값
    let min = sides.min()!
    var results: Set<Int> = []
    
    // max가 가장 긴 변일 경우
    for x in (max - min)...max {
        if max < min + x {
            results.insert(x)
        }
    }
    
    // x가 가장 긴 변일 경우
    for x in (max + 1)..<(max + min) {
        results.insert(x)
    }

    return results.count
}