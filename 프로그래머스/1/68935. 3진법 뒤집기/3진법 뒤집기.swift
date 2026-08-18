import Foundation

func solution(_ n:Int) -> Int {
    guard n > 3 else { return n }
    
    var num = n
    var triple = [Int]()
    
    while num >= 3 {
        triple.append(num % 3)
        num /= 3
        
        if num < 3 {
            triple.append(num)
        }
    }
    
    return triple.enumerated().reduce(0) { result, target in
        let count = (triple.count - 1) - target.offset
        let decimal = (0..<count).reduce(target.element) { decimal, _ in
            decimal * 3
        }
        return result + decimal
    }
}