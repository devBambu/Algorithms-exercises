import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var array = arr
    var row = arr.count // 행 수
    var column = arr[0].count // 열 수
    
    while row != column {
        if row > column {
            for i in 0..<array.count {
                array[i].append(0)
            }
        } else {
            array.append(Array(repeating: 0, count: column))
        }
        
        row = array.count
        column = array[0].count
    }
    
    return array
}