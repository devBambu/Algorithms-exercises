import Foundation

func solution(_ n:Int64) -> Int64 {
    let assume = Int64(sqrt(Float(n)))
    
    return assume * assume == n ? (assume + 1) * (assume + 1) : Int64(-1)
}