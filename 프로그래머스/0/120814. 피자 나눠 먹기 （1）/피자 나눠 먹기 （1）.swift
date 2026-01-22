import Foundation

func solution(_ n:Int) -> Int {
    // x * 7 >= n
    // x >= n / 7
    
    return n % 7 == 0 ? n / 7 : n / 7 + 1
}