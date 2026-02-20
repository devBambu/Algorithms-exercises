import Foundation

// 2의 거듭제곱에는 1도 포함됨!!
// 2의 0제곱은 1
func solution(_ arr:[Int]) -> [Int] {
    var num: Double = 1
    
    while Int(num) < arr.count {
        num *= 2
    }
    
    return arr + Array(repeating: 0, count: Int(num) - arr.count)
}


// 다른 사람의 풀이
// 2의 거듭제곱이라 비트 연산을 생각했었는데, 어떻게 거듭제곱을 해야하고 비교해야할지 감이 잡히지 않아 포기했었다.
// 비트 연산을 활용한 풀이가 있어 기록해본다.

func solution(_ arr:[Int]) -> [Int] {
    var i = 1 // 0b00000001
    while i < arr.count { i <<= 1 } // 0b00000010의 꼴로 1이 한칸씩 옆으로 이동 --> 거듭제곱을 하는 것과 동일
    return arr + Array(repeating: 0, count: arr.count - i)
}
