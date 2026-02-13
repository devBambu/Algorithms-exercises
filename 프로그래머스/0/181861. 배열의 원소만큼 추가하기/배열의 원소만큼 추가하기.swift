import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.reduce([Int]()) {
        $0 + Array(repeating: $1, count: $1)
    }
}