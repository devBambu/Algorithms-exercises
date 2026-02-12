import Foundation

func solution(_ numbers:[Int]) -> String {    
    let result = numbers.map(String.init).sorted(by: {
        ($0 + $1) > ($1 + $0)
    })
    
    return result.joined().hasPrefix("0") ? "0" : result.joined()
}