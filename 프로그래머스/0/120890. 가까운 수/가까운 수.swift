import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
    return array.sorted { (abs($0 - n), $0) < (abs($1 - n), $1) }.first!
}