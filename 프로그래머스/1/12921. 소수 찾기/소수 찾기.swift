func solution(_ n:Int) -> Int {
    var isPrime = Array(repeating: true, count: n)
    let sqrt = Int(Double(n).squareRoot())
    let end = sqrt * sqrt < n ? sqrt + 1 : sqrt
    
    isPrime[0] = false // 1은 소수가 아님
    
    for num in (2...end) {
        stride(from: num * 2, through: n, by: num).forEach {
            isPrime[$0 - 1] = false
        }
    }

    return isPrime.count(where: { $0 })
}