import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var asc = [Int]()
    var desc = [Int]()
    
    if A.min()! <= B.min()! {
        asc = A.sorted()
        desc = B.sorted(by: >)
    } else {
        asc = B.sorted()
        desc = A.sorted(by: >)
    }
    
    return (0..<A.count).reduce(0) {
        let sum = asc[$1] * desc[$1]
        return $0 + sum
    }
}