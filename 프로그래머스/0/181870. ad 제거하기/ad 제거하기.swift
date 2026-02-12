import Foundation

func solution(_ strArr:[String]) -> [String] {
    return strArr.reduce(into: [String]()) {
        if !$1.contains("ad") { $0.append($1) } 
    }
}