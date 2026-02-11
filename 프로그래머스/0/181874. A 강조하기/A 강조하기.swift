import Foundation

func solution(_ myString:String) -> String {
    return myString.reduce("") {
        $1 == "a" || $1 == "A" ? $0 + "A" : $0 + $1.lowercased()
    }
}

// 다른 사람의 풀이
func solution(_ myString: String) -> String {
    return myString.lowercased().replacintOccurence(of: "a", with: "A")
}
