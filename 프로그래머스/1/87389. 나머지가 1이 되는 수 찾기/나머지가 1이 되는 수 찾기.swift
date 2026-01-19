import Foundation

func solution(_ n:Int) -> Int {
    var x = 0
    
    for num in 2... {
        if n % num == 1 {
            x = num
            break
        }
    }
    return x
}