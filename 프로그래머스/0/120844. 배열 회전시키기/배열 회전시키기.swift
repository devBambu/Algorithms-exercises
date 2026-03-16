import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var arr = numbers
    
    if direction == "left" {
        let num = arr.removeFirst()
        return arr + [num]
        
    } else {
        let num = arr.removeLast()
        return [num] + arr
    }
}