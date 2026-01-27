import Foundation

func solution(_ my_string:String) -> String {
    
    return my_string.reduce(into: "") {
        if $1.isUppercase {
            $0 += $1.lowercased()
        } else {
            $0 += $1.uppercased()
        }
    }
}