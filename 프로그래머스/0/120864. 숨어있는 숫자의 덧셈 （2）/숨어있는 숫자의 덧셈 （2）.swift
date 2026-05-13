import Foundation

func solution(_ my_string:String) -> Int {
//     let nums = my_string.map {
//         return $0.isNumber ? String($0) : " "
//     }.joined()
    
//     return nums.components(separatedBy: .whitespaces).reduce(into: 0) {
//         $0 += Int($1) ?? 0
//     }
    
    my_string.split { !$0.isNumber }.reduce(0) { $0 + (Int($1) ?? 0) }
}