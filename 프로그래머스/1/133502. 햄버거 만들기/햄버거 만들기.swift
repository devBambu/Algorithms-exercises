import Foundation

func solution(_ ingredient:[Int]) -> Int {    
    var stack = [Int]()
    var count = 0
    
    for i in ingredient {
        stack.append(i)
        guard stack.count >= 4 else { continue }
        
        let suffix = stack.suffix(4)
        if suffix == [1, 2, 3, 1] {
            stack.removeLast(4)
            count += 1
        }
    }
    
    return count
}