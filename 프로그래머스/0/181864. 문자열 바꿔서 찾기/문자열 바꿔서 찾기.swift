import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    return myString.reduce("") {
        $1 == "A" ? $0 + "B" : $0 + "A"
    }
    .contains(pat) ? 1 : 0
}