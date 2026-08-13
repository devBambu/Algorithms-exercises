func solution(_ n:Int, _ m:Int) -> [Int] {
    let gcd = gcd(n, m)
    let lcm = (n * m) / gcd
    
    return [gcd, lcm]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let mod = a % b
    return mod == 0 ? b : gcd(b, mod)
}