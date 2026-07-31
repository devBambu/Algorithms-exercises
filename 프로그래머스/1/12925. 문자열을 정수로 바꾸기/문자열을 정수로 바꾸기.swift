func solution(_ s:String) -> Int {
    s.hasPrefix("-") ? Int(s.trimmingPrefix("-"))! * -1 : Int(s)!
}