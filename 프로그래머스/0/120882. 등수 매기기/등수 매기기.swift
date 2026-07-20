import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let avg = score.map { Double($0[0] + $0[1]) / 2 }
    let index = avg.sorted(by: >)
    
    return avg.map { index.firstIndex(of: $0)! + 1}
}