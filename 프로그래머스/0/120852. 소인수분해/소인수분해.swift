import Foundation

func solution(_ n:Int) -> [Int] {
    var target = n
    var result = Set<Int>()
    
    while target != 1 {
        for num in 2... {
            if target % num == 0 {
                result.insert(num)
                target = target / num
                break
            }
        }
    }
    
    return result.sorted()
}