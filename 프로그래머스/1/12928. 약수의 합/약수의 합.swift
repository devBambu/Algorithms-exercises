func solution(_ n:Int) -> Int {
    guard n > 0 else { return 0 }
    
    return (1...n).reduce(0) {
        $0 + (n % $1 == 0 ? $1 : 0)
    }
}