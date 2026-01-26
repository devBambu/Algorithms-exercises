import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    if my_string.contains(letter) {
        return my_string.replacingOccurrences(of: letter, with: "")
    } else {
        return my_string
    }
    
}