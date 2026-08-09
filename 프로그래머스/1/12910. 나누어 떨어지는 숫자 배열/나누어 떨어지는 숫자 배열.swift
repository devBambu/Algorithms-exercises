func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let sorted = arr.filter { $0 % divisor == 0 }.sorted(by: <)
    return sorted.isEmpty ? [-1] : sorted
}