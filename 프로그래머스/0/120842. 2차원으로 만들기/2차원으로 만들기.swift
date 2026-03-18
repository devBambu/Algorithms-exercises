import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    stride(from: n, through: num_list.count, by: n).reduce([[Int]]()) {
        let first = $1 - n
        let result = Array(num_list[first..<$1])
        
        return $0 + [result]
    }
}