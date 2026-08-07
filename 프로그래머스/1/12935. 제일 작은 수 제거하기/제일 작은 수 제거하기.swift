func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    result.remove(at: arr.firstIndex(of: arr.min()!)!)
    
    return result.isEmpty ? [-1] : result 
}