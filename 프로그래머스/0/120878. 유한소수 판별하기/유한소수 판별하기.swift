import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var target = b
    
    while (target % 5 == 0) || (target % 2 == 0) {
        if target % 5 == 0 {
            target = target / 5
        } else if target % 2 == 0 {
            target = target / 2
        }
    }
    
    return a % target == 0 ? 1 : 2
}