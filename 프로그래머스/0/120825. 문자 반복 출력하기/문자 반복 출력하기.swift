import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.reduce(into: "") {
        $0 += String(repeating: $1, count: n)
    }
}