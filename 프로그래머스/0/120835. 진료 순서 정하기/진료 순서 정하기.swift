import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    
    let sorted = emergency.sorted(by: { $0 > $1 }) // 응급도가 큰 순서
    
    return emergency.map {
        sorted.firstIndex(of: $0)! + 1
    }
}