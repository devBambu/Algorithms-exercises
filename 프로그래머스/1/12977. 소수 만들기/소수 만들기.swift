import Foundation

func solution(_ nums:[Int]) -> Int {
    var count = 0
    
    for a in 0..<nums.count - 2 {
        for b in (a + 1)..<nums.count - 1 {
            for c in (b + 1)..<nums.count {
                let sum = nums[a] + nums[b] + nums[c]
                count = isPrime(sum) ? count + 1 : count
            }
        }
    }

    return count
}

func isPrime(_ num: Int) -> Bool {
    let sqrt = Int(Double(num).squareRoot())
    let end = sqrt * sqrt < num ? sqrt + 1 : sqrt
        
    for n in 2...end {
        if num % n == 0 { return false }
    }
        
    return true
}