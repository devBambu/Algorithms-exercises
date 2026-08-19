import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = Set<Int>()
    
    for first in numbers.enumerated() {
        for second in numbers[(first.offset + 1)...] {
            result.insert(first.element + second)
        }
    }
    
    return result.sorted()
}