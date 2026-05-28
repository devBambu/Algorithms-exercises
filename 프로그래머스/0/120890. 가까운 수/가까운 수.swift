import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
    return array.sorted(by: { 
        if abs($0 - n) < abs($1 - n) {
            return true
        } else if abs($0 - n) == abs($1 - n) {
            return $0 < $1
        } else {
            return false
        }
    }).first!
}