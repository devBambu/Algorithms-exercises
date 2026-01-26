import Foundation

func solution(_ n:Int) -> Int {
    for num in 1...n {
        if num * num == n { return 1 }
    }
    return 2
}