import Foundation

// 최종 답안
func solution(_ numbers:[Int]) -> Int {    
    let sorted = numbers.sorted(by: >)
    return sorted[0] * sorted [1]
}

// 기존 코드
// - 정석적으로 각 요소들을 곱해보고 최댓값과 비교하여 곱한 결과가 크면 최댓값 교체, 크지 않으면 유지
// - 생각해보니까 제일 큰 값 2개를 곱하면 최댓값이지 않나? 싶어서 최종 답안의 형태로 수정
// -- 반복문을 계속 돌지 않아도 되기 때문에 실행 속도도 빠름
func solution2(_ numbers: [Int]) -> Int {
    var max = 0
    for (idx, element) in numbers.enumerated() {
        for i in (idx + 1)..<numbers.count {
            let result = element * numbers[i]
            max = max < result ? result : max
        }
    }
    return max
}
