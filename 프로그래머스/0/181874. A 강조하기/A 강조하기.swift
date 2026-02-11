import Foundation

func solution(_ myString:String) -> String {
    return myString.reduce("") {
        $1 == "a" || $1 == "A" ? $0 + "A" : $0 + $1.lowercased()
    }
}