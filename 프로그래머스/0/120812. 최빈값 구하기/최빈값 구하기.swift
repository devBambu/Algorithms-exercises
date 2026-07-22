import Foundation

func solution(_ array:[Int]) -> Int {
    let dic = Dictionary(grouping: array) { $0 }.sorted { $0.value.count > $1.value.count }
    let max = dic.first!.value.count
    let filter = dic.filter { $0.value.count == max }
    
    return filter.count == 1 ? filter.first!.key : -1
}