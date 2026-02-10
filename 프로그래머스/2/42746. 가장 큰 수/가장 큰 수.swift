import Foundation

func solution(_ numbers:[Int]) -> String {
    // "610" > "106" 중 큰 수를 비교하여 큰 것대로 나열
    let result = numbers.sorted(by: { 
        ($0.description + $1.description) > ($1.description + $0.description) 
    }).map(String.init).joined()
    
    // 결과가 0이라면 "0000" 형태로 되어있을 가능성 -- "0"으로 반환
    return Int(result) == 0 ? "0" : result
}