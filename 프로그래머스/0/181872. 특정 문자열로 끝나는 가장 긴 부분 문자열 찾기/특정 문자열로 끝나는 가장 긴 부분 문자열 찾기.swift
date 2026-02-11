import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    var result = myString
    while !result.hasSuffix(pat) {
        result.removeLast()
    }
    
    return result
}