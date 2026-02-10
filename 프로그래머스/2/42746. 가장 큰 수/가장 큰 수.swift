import Foundation

func solution(_ numbers:[Int]) -> String {
    // [6, 10, 2]일 때, "610" > "106" 중 큰 수를 비교해 큰 것대로 나열
    let result = numbers.sorted(by: { 
        ($0.description + $1.description) > ($1.description + $0.description) 
    }).map(String.init).joined()
    
    // 주어진 numbers가 [0, 0, 0, 0]이라면 결과가 "0000" -> "0"으로 변환
    return Int(result) == 0 ? "0" : result
}
