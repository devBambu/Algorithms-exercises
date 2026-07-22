import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted(by: {
        let lhs = abs(n - $0)
        let rhs = abs(n - $1)
        
        if lhs == rhs {
            return $0 > $1
        } else {
            return lhs < rhs
        }
    })
}