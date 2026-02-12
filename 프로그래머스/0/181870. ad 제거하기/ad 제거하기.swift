import Foundation

func solution(_ strArr:[String]) -> [String] {
    return strArr.reduce(into: [String]()) {
        if !$1.contains("ad") { $0.append($1) } 
    }
}

// 다른 사람의 풀이 - filter 쓰면 됐음..
func solution(_ strArr: [String]) -> [String] {
    return strArr.filter { !$0.contains("ad") }
}
