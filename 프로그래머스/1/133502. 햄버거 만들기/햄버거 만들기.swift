import Foundation

func solution(_ ingredient:[Int]) -> Int {    
    let burger = [1, 2, 3, 1] // 빵 - 야채 - 고기 - 빵
    var stack = [Int]()
    var count = 0
    
    for i in ingredient {
        stack.append(i)
        
        let s = stack.count - 4
        let e = stack.count
        
        if e >= 4, Array(stack[s..<e]) == burger {
            stack.removeLast(4)
            count += 1
        }
    }
    
    return count
}