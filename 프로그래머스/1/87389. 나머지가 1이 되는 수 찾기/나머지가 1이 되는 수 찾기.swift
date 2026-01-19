import Foundation

// 최종 풀이(다른 사람 풀이 참고)
func solution(_ n:Int) -> Int {
    for x in 2...n {
        if n % x == 1 { return x }
    }
    return 0
}

// 기존 풀이
func solution2(_ n: Int) -> Int {
    var x = 0

    for num in 2... {
        if n % num == 1 {
            x = num
            break
        }
    }
    return x
}
