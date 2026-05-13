import Foundation

func solution(_ n:Int) -> Int {
    var cal = 1
    
    for i in 1...10 {
        cal = cal * i
        if n < cal { return (i - 1) }
    }
    
    return 10
}