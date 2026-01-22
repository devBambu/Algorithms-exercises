import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    return s1.reduce(0) {
        return s2.contains($1) ? $0 + 1 : $0
    }
}