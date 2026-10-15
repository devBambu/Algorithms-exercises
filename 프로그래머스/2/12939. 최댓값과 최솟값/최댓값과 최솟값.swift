func solution(_ s:String) -> String {
    let comp = s.components(separatedBy: .whitespaces).map { Int($0)! }
    return "\(comp.min()!) \(comp.max()!)"
}