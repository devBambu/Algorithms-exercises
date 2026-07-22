import Foundation

func solution(_ array:[Int]) -> Int {
    let dic = array.reduce(into: [Int: Int]()) {
        $0[$1, default: 0] += 1
    }
    
    let max = dic.values.max()!
    let filter = dic.filter { $0.value == max }
    
    return filter.count == 1 ? filter.first!.key : -1
}