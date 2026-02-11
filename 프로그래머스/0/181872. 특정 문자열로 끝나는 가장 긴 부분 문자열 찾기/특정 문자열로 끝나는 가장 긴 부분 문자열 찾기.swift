import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    var result = myString
    while !result.hasSuffix(pat) {
        result.removeLast()
    }
    
    return result
}

// 다른 사람의 풀이
func solution(_ myString: String, _ pat: String) -> String {
    guard let range = myString.range(of: pat, options: .backward) else { return "" } // of:가 있는 범위를 반환 - options: .backward는 뒤에서부터 찾음. 즉, myStirng의 뒤에서부터 of:가 있는 범위를 찾아 반환
    return myString.prefix(upTo: range.upperBound)
}
