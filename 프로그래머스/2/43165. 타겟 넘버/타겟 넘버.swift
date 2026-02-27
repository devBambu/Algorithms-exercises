import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var results = [0]
    for num in numbers {
        results = results.reduce(into: [Int]()) {
            let a = $1 + num
            let b = $1 - num
            
            $0.append(a)
            $0.append(b)
        }
    }
    
    return results.filter { $0 == target }.count
}