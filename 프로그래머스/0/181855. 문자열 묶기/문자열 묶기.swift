import Foundation

func solution(_ strArr:[String]) -> Int {
    let num = (strArr.max { $0.count < $1.count })?.count ?? 1
    
    return strArr.reduce(into: Array(repeating: 0, count: num)) {
        let i = $1.count - 1
        $0[i] += 1
    }.max()!
}