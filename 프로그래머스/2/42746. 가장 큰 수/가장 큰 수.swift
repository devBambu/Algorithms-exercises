import Foundation

func solution(_ numbers:[Int]) -> String {
    // sorted 내에서 문자열로 변환하여 비교하지 말고 애초에 문자열로 변환해서 sorted에서 비교
    let result = numbers.map(String.init).sorted(by: {
        ($0 + $1) > ($1 + $0)
    })

    // prefix가 0을 포함하는지 확인
    return result.joined().hasPrefix("0") ? "0" : result.joined()
}
