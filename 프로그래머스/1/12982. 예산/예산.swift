import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    // 1, 3, 2, 5, 4 = 15 > budget
    // 15 - 5 = 10 > budget 
    // 15 - 5 - 4 = 6 < budget
    
    var request = d.reduce(0, +)
    if request <= budget { return d.count }
    
    return d.sorted(by: >).filter { 
        request = request - $0
        return request <= budget
    }.count - 1
}