import Foundation

func solution(_ array:[Int]) -> Int {
    let dic = array.reduce(into: [Int: Int]()) {
        $0[$1, default: 0] += 1
    }
    
    let max = dic.values.max()!
    
    return dic.count(where: { $0.value == max }) == 1 ? dic.sorted(by: { $0.value > $1.value }).first!.key : -1
}