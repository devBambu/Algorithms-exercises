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
        if cycles.enumerated().reduce(into: [Bool]()) { isYellow, cycle in
            let index = (second - 1) % cycle.element
            let yellowRange = signals[cycle.offset][0]..<(signals[cycle.offset][0] + signals[cycle.offset][1])
                                                                            
            if yellowRange.contains(index) {
                isYellow.append(true)
            } else {
                isYellow.append(false)
            }                                                                        }.allSatisfy { $0 == true } {
            return second
        }
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