import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var num: Double = 1
    
    while Int(num) < arr.count {
        num *= 2
    }
    
    return arr + Array(repeating: 0, count: Int(num) - arr.count)
}