import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.reduce(into: 0) { $0 = $1 == n ? $0 + 1 : $0 }
}