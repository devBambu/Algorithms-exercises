import Foundation

func solution(_ rny_string:String) -> String {
    let ans = rny_string.replacingOccurrences(of: "m", with: "rn")
    return ans
}