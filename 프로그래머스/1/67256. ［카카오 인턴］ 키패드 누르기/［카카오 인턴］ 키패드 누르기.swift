import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    /*  좌표 기준 (y, x)
    [(0, 0), (0, 1), (0, 2)] - 1, 2, 3
    [(1, 0), (1, 1), (1, 2)] - 4, 5, 6
    [(2, 0), (2, 1), (2, 2)] - 7, 8, 9
    [(3, 0), (3, 1), (3, 2)] - *, 0, #
    */
    var current = [(3, 0), (3, 2)] // (왼손 초기 위치 y, x), (오른손 초기 위치 y, x)
    var result = ""
    
    for num in numbers {
        let adjusted = num == 0 ? 10 : num - 1
        let y = adjusted / 3
        let x = adjusted % 3
        
        var handIndex = x == 0 ? 0 // 타겟 숫자가 왼손 범위일 경우
        : x == 2 ? 1 // 타겟 숫자가 오른손 범위일 경우
        : -1 // 둘다 아닐 경우
        
        if handIndex < 0 {
            let lhs = abs(y - current[0].0) + abs(x - current[0].1)
            let rhs = abs(y - current[1].0) + abs(x - current[1].1)
            
            if lhs == rhs {
                handIndex = hand == "left" ? 0 : 1
            } else {
                handIndex = lhs < rhs ? 0 : 1
            }
        }
        
        current[handIndex] = (y, x)
        result += handIndex == 0 ? "L" : "R"
    }
    
    return result
}