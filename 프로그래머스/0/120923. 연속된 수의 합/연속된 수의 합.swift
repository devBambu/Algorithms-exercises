import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let middle = total / num
    if num % 2 == 0 {
        return (((middle - num / 2) + 1)...middle + num / 2).map { Int($0) }
    } else {
        return ((middle - num / 2)...middle + num / 2).map { Int($0) }
    }
}