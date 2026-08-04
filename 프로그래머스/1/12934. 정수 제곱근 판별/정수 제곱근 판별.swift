func solution(_ n:Int64) -> Int64 {
    let assume = Int(Float(n).squareRoot())
    
    if assume * assume == n {
        return Int64((assume + 1) * (assume + 1))
    } else {
        return Int64(-1)
    }
}