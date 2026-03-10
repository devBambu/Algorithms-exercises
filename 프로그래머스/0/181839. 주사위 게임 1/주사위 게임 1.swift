import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    if !a.isMultiple(of: 2), !b.isMultiple(of: 2) {
        return (a * a) + (b * b)
    } else if a.isMultiple(of: 2), b.isMultiple(of: 2) {
        return abs(a - b)
    } else {
        return 2 * (a + b)
    }
}