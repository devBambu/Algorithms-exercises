import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
    return array.sorted(by: { $0 < $1 }).sorted(by: { abs($0 - n) < abs($1 - n) }).first!
}