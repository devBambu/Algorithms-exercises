import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    // nCr = nC(n-r) : n은 balls, r은 share
    // nCr = n! / ((n-r)! * r!)
    
    if balls == share {
        return 1
    }
    
    let r = min(share, balls - share)
    // 5 * 4 * 3 * 2 * 1
    // (3 * 2 * 1) * (2 * 1) : r = 2
    // 5 * 4 / 2 * 1
    // ((n - r + 1)...n)! / r!
    
    var result = 1
    
    let numerator = Array((balls - r + 1)...balls)
    let denominator = Array(1...r)
    
    for n in numerator.enumerated() {
        if n.offset < denominator.count {
            result = result * n.element / denominator[n.offset]
        } else {
            result = result * n.element
        }
    }
    
    return result
}
