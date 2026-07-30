import Foundation

func solution(_ signals:[[Int]]) -> Int {
    // 초 -> 노 -> 빨
    // 신호등이 모두 노랑일 때 정전
    
    // G G Y R R: 2초, 1초, 2초
    // (5 - 1) % 5 = 4: 인덱스
    
    let cycles = signals.map { $0.reduce(0, +) }
    let lcm = cycles.reduce(1) { currentLcm, num in 
            currentLcm / gcd([currentLcm, num]) * num
                               } // 반복문 종료 범위
    
    for second in 1...lcm {
        let allYellow = signals.enumerated().allSatisfy { 
            let index = (second - 1) % cycles[$0.offset]
            let green = $0.element[0]
            let yellow = $0.element[1]
            
            return index >= green && index < (green + yellow)
        }
        if allYellow { return second }
    }
    
    return -1
}

func gcd(_ numbers: [Int]) -> Int {
    var gcd = numbers.min()!
    
    while numbers.filter { $0 % gcd != 0 }.count > 0 {
        gcd -= 1
    }
    
    return gcd
}