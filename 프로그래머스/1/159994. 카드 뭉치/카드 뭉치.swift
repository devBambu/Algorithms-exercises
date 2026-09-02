import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var first = cards1
    var second = cards2
    
    for g in goal {
        if !first.isEmpty && (first.first ?? "") == g {
            first.removeFirst()
        } else if !second.isEmpty && (second.first ?? "") == g {
            second.removeFirst()
        } else {
            return "No"
        }
    }
    
    return "Yes"
}