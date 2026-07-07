import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var array = arr
    let row = arr.count // 행 수
    let column = arr[0].count // 열 수
    let num = row - column
    
    if num > 0 {
        // 행이 더 많을 경우
        for i in array.indices {
            array[i] = array[i] + Array(repeating: 0, count: num)
        }
    } else if num < 0 {
        // 열이 더 많을 경우
        let count = num * -1
        for i in 0..<count {
            let extraRow = Array(repeating: 0, count: column)
            array.append(extraRow)
        }
    }
    
    return array
}