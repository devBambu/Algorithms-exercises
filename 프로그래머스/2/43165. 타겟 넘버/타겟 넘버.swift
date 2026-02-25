import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var results = [0]
    for num in numbers {
        let twoNum = [num, num * -1]
        let temp = results.reduce(into: [Int]()) {
            let a = $1 + twoNum[0]
            let b = $1 + twoNum[1]
            
            $0.append(a)
            $0.append(b)
        }
        results = temp
    }
    
    return results.filter { $0 == target }.count
}