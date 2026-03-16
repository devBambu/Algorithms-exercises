import Foundation

func solution(_ age:Int) -> String {
    return String(age).map { String(Unicode.Scalar(Int(String($0))! + 97)!) }.joined()
}