func solution(_ n:Int, _ m:Int) -> [Int] {
    var gcd = min(n, m)
    
    while n % gcd != 0 || m % gcd != 0 {
        if gcd == 1 { break }
        gcd -= 1
    }
    
    let lcm = (n * m) / gcd
    
    return [gcd, lcm]
}