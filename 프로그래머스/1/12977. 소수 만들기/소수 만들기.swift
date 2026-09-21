import Foundation

func solution(_ nums:[Int]) -> Int {
    var (a, b, c) = (0, 1, 2)
    var primes = [Int: [Set<Int>]]()
    
    while a < (nums.count - 2) {
        let targets = Set([nums[a], nums[b], nums[c]])
        let sum = targets.reduce(0, +)
        
        if let numbers = primes[sum],
        !numbers.contains(targets) {
            primes[sum, default: [Set<Int>]()].append(targets)
        } else if isPrime(sum) {
            primes[sum] = [targets]
        }
    
        c += 1
        if c == nums.count {
            b += 1
            if b == nums.count - 1 {
                a += 1
                b = a + 1
            }
            c = b + 1
        }
    }

    return primes.values.flatMap { $0 }.count
}

func isPrime(_ num: Int) -> Bool {
    let sqrt = Int(Double(num).squareRoot())
    let end = sqrt * sqrt < num ? sqrt + 1 : sqrt
        
    for n in 2...end {
        if num % n == 0 { return false }
    }
        
    return true
}