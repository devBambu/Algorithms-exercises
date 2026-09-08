import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    // n: 1m 길이의 벽 구역
    // m: 롤러의 길이
    // section: 칠해야할 구역 번호 배열
    // - 롤러가 벽에서 벗어나면 안됨
    // - 구역의 일부분만 포함되도록 칠하면 안됨
    
    var first = 0
    var count = 0
    
    for s in section {
        if first == 0 || !(first..<(first + m)).contains(s) {
            first = s
            count += 1
        }
    }
    
    return count
}