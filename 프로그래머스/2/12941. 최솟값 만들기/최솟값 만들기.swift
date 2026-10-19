import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    let asc = A.sorted()
    let desc = B.sorted(by: >)
    
    return (0..<A.count).reduce(0) {
        let sum = asc[$1] * desc[$1]
        return $0 + sum
    }
}