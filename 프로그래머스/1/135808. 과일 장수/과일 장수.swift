import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let sorted = score.sorted(by: >)
    
    return stride(from: 0, to: sorted.count, by: m).reduce(0) {
        if $1 + m > sorted.count {
            return $0
        } else {
            return $0 + sorted[$1..<$1 + m].min()! * m
        }        
    }
}