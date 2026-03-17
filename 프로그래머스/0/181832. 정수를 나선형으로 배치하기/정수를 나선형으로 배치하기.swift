import Foundation

func solution(_ n:Int) -> [[Int]] {
    let row = Array(repeating: 0, count: n) // 한 줄
    var arr = Array(repeating: row, count: n) // 빈 배열
    
    var limit = (min: 0, max: n - 1)
    
    var num = 1
    var r = 0
    var c = 0
    
    arr[r][c] = num
    
    while num < n * n {
        
        if c == limit.max && r < limit.max { // 열이 끝에 닿으면
            r += 1 // 행을 내림
        } else if r == limit.max && c != limit.min { // 행이 끝에 닿으면
            c -= 1 // 열을 왼쪽으로
        } else if c == limit.min && r != limit.min { // 열이 왼쪽에 닿으면
            r -= 1 // 행을 위로
        } else {
            c += 1
        }
        
        num += 1
        
        arr[r][c] = num
        
        if (r == limit.min + 1) && (c == limit.min) { // 한 바퀴의 끝 지점에 도달하면
            limit = (min: limit.min + 1, max: limit.max - 1) // limit 수정
            
            if limit.max == limit.min {
                c += 1
                num += 1
                arr[r][c] = num
                break
            }
        }
    }
    
    return arr
}