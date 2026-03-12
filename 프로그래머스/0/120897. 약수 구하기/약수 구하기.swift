import Foundation

func solution(_ n:Int) -> [Int] {
    return (0...n).reduce([Int]()) {
        n.isMultiple(of: $1) ? $0 + [$1] : $0
    }
}