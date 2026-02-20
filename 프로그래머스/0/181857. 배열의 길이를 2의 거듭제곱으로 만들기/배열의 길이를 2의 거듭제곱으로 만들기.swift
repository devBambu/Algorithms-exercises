import Foundation

// 2의 거듭제곱에는 1도 포함됨!!
// 2의 0제곱은 1
func solution(_ arr:[Int]) -> [Int] {
    var num: Double = 1
    
    while Int(num) < arr.count {
        num *= 2
    }
    
    return arr + Array(repeating: 0, count: Int(num) - arr.count)
}
