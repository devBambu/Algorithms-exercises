func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted {
        let lhs = Array($0)[n]
        let rhs = Array($1)[n]
        
        if lhs == rhs {
            return $0 < $1
        } else {
            return lhs < rhs
        }
    }
}