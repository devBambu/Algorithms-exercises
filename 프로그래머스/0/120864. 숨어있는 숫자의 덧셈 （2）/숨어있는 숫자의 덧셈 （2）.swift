import Foundation

func solution(_ my_string:String) -> Int {
    let nums = my_string.map { Int(String($0)) ?? -1 }
    .map { $0 == -1 ? " " : String($0) }.joined()
    
    return nums.components(separatedBy: .whitespaces).reduce(into: 0) {
        $0 += Int($1) ?? 0
    }
}