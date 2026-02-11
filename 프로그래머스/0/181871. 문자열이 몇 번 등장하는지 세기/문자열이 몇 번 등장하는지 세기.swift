import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var string = myString
    var num = 0
    while string != "" {
        num = string.hasPrefix(pat) ? num + 1 : num
        string.removeFirst()
    }
    
    return num
}