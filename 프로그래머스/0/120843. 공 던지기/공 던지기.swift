import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    // 1, 2, 3, 4, 5, 6
    // 5번 던짐. 
    // 0, 2, 4, 6, 8
    // 0, 2, 4, 0, 2 - index
    // 2 * 4 - 6  = 2
    // 2 * (k - 1) - numbers.count
    
    let i = (k - 1) * 2 % numbers.count
    return numbers[i]
}