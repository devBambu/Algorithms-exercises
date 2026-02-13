import Foundation

func solution(_ myStr:String) -> [String] {
    let result = myStr.components(separatedBy: ["a", "b", "c"]).filter { !$0.isEmpty }
    return result.isEmpty ? ["EMPTY"] : result
}