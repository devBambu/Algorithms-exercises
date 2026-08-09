func solution(_ s:String) -> String {
    guard s.count > 1 else { return s } // s의 길이가 1일 때 빠른 종료

    let i = s.count / 2
    
    if s.count % 2 == 0 {
        return String(Array(s)[i - 1...i])
    } else {
        return String(Array(s)[i])
    }
}