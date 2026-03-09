func solution(_ num:Int) -> Int {
    if num == 1 { return 0 }
    
    var result = num
    for attempt in 0..<500 {
        if result.isMultiple(of: 2) {
            result = result / 2
        } else {
            result = result * 3 + 1
        }
        
        if result == 1 { 
            return attempt + 1
        }
    }
    
    return -1
}