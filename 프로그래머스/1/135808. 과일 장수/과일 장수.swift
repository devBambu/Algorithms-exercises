import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let sorted = score.sorted(by: >)
    
    return stride(from: m - 1, to: sorted.count, by: m).reduce(0) {
        $0 + (sorted[$1] * m) // 내림차순 정렬을 했으므로 sorted[$1]는 항상 min값
    }
}