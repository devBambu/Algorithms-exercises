import Foundation

func solution(_ babbling:[String]) -> Int {
    return babbling.reduce(into: 0) { word, bab in
        var target = bab
        ["aya", "ye", "woo", "ma"].forEach {
            target = target.replacingOccurrences(of: $0, with: "#")
        }
        
        word += target.replacingOccurrences(of: "#", with: "").isEmpty ? 1 : 0             
    }
}