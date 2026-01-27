import Foundation

func solution(_ numbers:[Int]) -> Int {
    let arr = numbers.sorted(by: >)
    if arr.count == 2 {
        return arr[0] * arr[1]
    } else {
        let a = arr[0] * arr[1]
        let b = arr[arr.count - 1] * arr[arr.count - 2]
        return max(a, b)
    }
}