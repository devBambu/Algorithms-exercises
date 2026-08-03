func solution(_ n:Int64) -> [Int] {
    String(n).compactMap { $0.hexDigitValue }.reversed()
}