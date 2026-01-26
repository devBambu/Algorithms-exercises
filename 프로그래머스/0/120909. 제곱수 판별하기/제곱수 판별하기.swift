import Foundation

// 최종 답안
func solution(_ n:Int) -> Int {
    return Double(n).squareRoot() == floor(Double(n).squareRoot()) ? 1 : 2
    // floor함수 = 내림하는 함수
    // 내림을 함으로써 자연수와 동일한 수로 만들어냄
}

// 기존 답안
// squareRoot를 사용하면 실수 제곱근도 구해지기 때문에 반복문으로 작성 -- 연산 시간이 오래 걸린다는 단점(반복문)
func solution2(_ n:Int) -> Int {
    for num in 1...n {
        if num * num == n { return 1 }
    }
    return 2
}
