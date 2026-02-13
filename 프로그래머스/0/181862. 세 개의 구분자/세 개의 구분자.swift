import Foundation

func solution(_ myStr:String) -> [String] {
    let result = myStr.components(separatedBy: ["a", "b", "c"]).filter { !$0.isEmpty }
    return result.isEmpty ? ["EMPTY"] : result
}

// 다른 사람의 풀이
// - split(whereSeparator:) 사용 시 whereSeparator에 클로저 사용 가능
func solution(_ myStr: String) -> [String] {
    let result = myStr.split { $0 == "a" || $0 == "b" || $0 == "c" }.map(String.init)
    return result.isEmpty ? ["EMPTY"] : result
}
