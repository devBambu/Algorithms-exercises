import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var current = [(3, 0), (3, 2)] // (왼손 초기 위치 y, x), (오른손 초기 위치 y, x)
    
    return numbers.reduce("") { result, num in
        let y = num == 0 ? 3 : (num % 3) == 0 ? (num / 3) - 1 : (num / 3)
        let x = num == 0 ? 1 : (num % 3) == 0 ? 2 : (num % 3) - 1

        var i = x == 0 ? 0 // 타겟 숫자가 왼손 범위일 경우
        : x == 2 ? 1 // 타겟 숫자가 오른손 범위일 경우
        : -1 // 둘다 아닐 경우

        if i < 0 {
            let sorted = current.map { 
                abs(y - $0.0) + abs(x - $0.1) // 거리 계산
            }.enumerated()
            .sorted(by: { // 거리순 정렬, 동일할 경우 hand 기준
                if $0.element == $1.element, hand == "left" {
                    return $0.offset == 0
                } else if $0.element == $1.element, hand == "right" {
                    return $0.offset == 1
                } else {
                    return $0.element < $1.element
                }
            })
            
            i = sorted[0].offset
        }
        
        current[i] = (y, x) // 현재 위치 갱신
        return i == 0 ? result + "L" : result + "R"
    }
}