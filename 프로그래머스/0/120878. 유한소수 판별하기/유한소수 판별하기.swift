import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var num = a
    while ((a % num != 0) || (b % num != 0)) && num > 0 {
        num -= 1
    }
    
    var target = b / num
    guard target != 1 else { return 1 }
    
    while (target % 5 == 0) || (target % 2 == 0) {
        if target % 5 == 0 {
            target = target / 5
        } else if target % 2 == 0 {
            target = target / 2
        }
    }
    
    return target == 1 ? 1 : 2
}