import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    return my_string.lowercased().replacingOccurrences(of: alp, with: alp.uppercased())
}