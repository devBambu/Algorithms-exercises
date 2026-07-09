import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    // 1, 2, 3, 4, 5, 6
    // 5번 던짐. 
    // 0, 2, 4, 6, 8
    // 0, 2, 4, 0, 2 - index
    // 2 * 4 - 6  = 2
    // 2 * (k - 1) - numbers.count
    
    // [1, 2], k == 1
    // 2 * 0 - 2 = -2
    
    var i = abs(2 * (k - 1) - numbers.count)
    
    while i > numbers.count - 1 {
       i = i - numbers.count 
    }
    
    return numbers[i]
}