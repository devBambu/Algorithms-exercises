func solution(_ a:Int, _ b:Int) -> Int64 {
    let min = Int64(min(a, b))
    let max = Int64(max(a, b))
    return (min...max).reduce(0, +)
}