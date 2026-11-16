import Foundation

// - Int 변환 없이 String 바로 사용 풀이

func solution(_ s:String) -> [Int] {
    // return: [이진 변환 횟수, 제거된 모든 0의 개수]
    
    var target = s
    var count = 0
    var zeros = 0
    
    while target != "1" {
        let c = target.filter { $0 != "0" }.count
        let zero = target.count - c // 제거한 0의 개수
        
        target = String(c, radix: 2) // 이진법 변환
        count += 1
        zeros += zero
    }
    
    return [count, zeros]
}