import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    // 1, 3, 2, 5, 4 = 15 > budget
    // 15 - 5 = 10 > budget 
    // 15 - 5 - 4 = 6 < budget
    
    let max = d.reduce(0, +)
    if max <= budget { return d.count }
    
    var current = max
    var departments = d
    
    while current > budget {
        current = current - departments.max()!
        
        let i = departments.firstIndex(of: departments.max()!)!
        departments.remove(at: i)
    }
    
    return departments.count
}