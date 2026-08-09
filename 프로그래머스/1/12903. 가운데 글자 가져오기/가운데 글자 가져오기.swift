func solution(_ s:String) -> String {
    guard s.count > 1 else { return s } // s의 길이가 1일 때 빠른 종료
    
    let characters = s.map { String($0) }
    let i = s.count / 2
    let indices = s.count % 2 == 0 ? [i - 1, i] : [i]
    
    return characters.enumerated()
    .filter { indices.contains($0.offset) }
    .map { $0.element }
    .joined()
}