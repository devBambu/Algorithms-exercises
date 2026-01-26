import Foundation

func solution(_ my_string:String) -> String {
    let vowel: [Character] = ["a", "e", "i", "o", "u"]
    return my_string.reduce(into: "") {
        $0 = vowel.contains($1) ? $0 : $0 + String($1)
    }
}