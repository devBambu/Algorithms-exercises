import Foundation

func solution(_ s:String) -> String {
    return s.reduce(into: [String: Int]()) { dic, letter in
        dic[String(letter), default: 0] += 1
    }.filter { $0.value == 1 }.keys.sorted(by: <).joined()
}