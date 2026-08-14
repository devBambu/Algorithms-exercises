import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    // 1, 3, 2, 5, 4 = 15 > budget
    // 15 - 5 = 10 > budget 
    // 15 - 5 - 4 = 6 < budget
    
    var request = 0
    
    return d.sorted().reduce(0) {
        request += $1
        return request <= budget ? $0 + 1 : $0
    }
}