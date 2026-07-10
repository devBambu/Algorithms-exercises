import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    // 경우의 수 공식: n! / (n-m)! * m!
    // 5 * 4 * 3 * 2!
    // 2! * 3!
    // 5 * 4
    // 2!

    if balls == share {
        return 1
    }
    
    let diff = balls - share
    let lower = (balls - diff) + 1
    
    var numerator = Array(lower...balls) // 분자 배열
    var denominator = Array(1...diff) // 분모 배열
    
    let resultRange = denominator.reduce(into: numerator) { array, num in
        guard num != 1 else { return }
                                                          
        var new = [Int]()
        var target = num
        
        for a in array {
            if target != 1, a % target == 0 {
                new.append(a / target)
                target = 1
            } else if target == 1 {
                new.append(a)
            } else {
                let gcd = gcd(a, target)
                new.append(a / gcd)
                target = target / gcd
            }
        }
        
        array = new // 분자 배열 갱신
    }
    
    return resultRange.reduce(1, *)
}
    
func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b

    while b != 0 {
        let remainder = a % b
        a = b
        b = remainder
    }

    return a
}
