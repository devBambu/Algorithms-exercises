import Foundation

func solution(_ signals:[[Int]]) -> Int {
    // 초 -> 노 -> 빨
    // 신호등이 모두 노랑일 때 정전
    
    // 5 - 2, 3 % 3 == 0, 13 - 2 = 11 , 11 % 1 == 0, 12 - 2 = 10, 10 % 2 == 0
    
    // G G Y R R
    // (5 - 1) % 5 = 4
    
    let colors = signals.reduce(into: [[String]]()) { colors, signal in
        let green = Array(repeating: "G", count: signal[0])
        let yellow = Array(repeating: "Y", count: signal[1])
        let red = Array(repeating: "R", count: signal[2])
                                                     
        colors.append(green + yellow + red)
    }
    
    let counts = colors.map { $0.count }
    let gcd = gcd(counts)
    let lcm = counts.map { $0 / gcd }.reduce(gcd, *)
    
    for second in 1...lcm {
        if colors.reduce(into: [String]()) { current, color in
            let index = (second - 1) % color.count
            current.append(color[index])
        }.allSatisfy { $0 == "Y"} {
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