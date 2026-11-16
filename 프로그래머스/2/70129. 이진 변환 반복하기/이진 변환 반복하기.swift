import Foundation

func solution(_ s:String) -> [Int] {
    // return: [이진 변환 횟수, 제거된 모든 0의 개수]
    
    var target = s.map { Int(String($0))! }
    var count = 0
    var zeros = 0
    
    while target != [1] {
        var c = target.filter { $0 != 0 }.count
        let zero = target.count - c // 제거한 0의 개수
        
        var binary = [Int]()
        while c != 0 {
            binary.append(c % 2)
            c = c / 2
        }
        
        target = binary.reversed()
        count += 1
        zeros += zero
    }
    
    return [count, zeros]
}