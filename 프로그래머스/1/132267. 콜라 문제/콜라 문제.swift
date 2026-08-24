import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result = 0
    var current = n
    
    while current >= a {
        let count = current / a
        let extra = count * b
        
        result += extra
        current = current - (count * a) + extra
    }
    
    return result
}