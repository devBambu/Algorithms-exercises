import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let avg = score.map { Double($0[0] + $0[1]) / 2 }
    let index = avg.sorted(by: { $0 > $1 })
    
    return avg.enumerated().reduce(into: Array(repeating: 0, count: score.count)) {
        let rank = index.firstIndex(of: $1.element)! + 1
        $0[$1.offset] = rank
    }
}