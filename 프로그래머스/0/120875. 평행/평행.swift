import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var line: [Double: [[Int]]] = [:] // [기울기: [점, 점]]
    
    for dot in dots.enumerated() {
        for i in dot.offset..<dots.count {
            guard i != dot.offset else { continue }
            
            let x = abs(dot.element[0] - dots[i][0])
            let y = abs(dot.element[1] - dots[i][1])
            let incl = Double(x) / Double(y)
            
            line[incl, default: []] += [dot.element, dots[i]]
        }
    }
    
    for l in line {
        if Set(l.value).count >= 4 {
            return 1
        }
    }
    
    return 0
}