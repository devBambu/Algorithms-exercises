import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    var sum = (numer1 * denom2) + (numer2 * denom1)
    var denom = denom1 * denom2
    var num = 2
    
    while num <= min(sum, denom) {
        if sum % num == 0, denom % num == 0 {
            sum /= num
            denom /= num
            num = 2
        } else {
            num += 1
        }
    }
    
    return [sum, denom]
}