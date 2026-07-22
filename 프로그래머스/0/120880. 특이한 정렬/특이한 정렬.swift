import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    numlist.sorted(by: { (abs(n - $0), -$0) < (abs(n - $1), -$1) })
}