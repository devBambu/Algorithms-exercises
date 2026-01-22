import Foundation

let input = (readLine() ?? "").components(separatedBy: .whitespaces).compactMap(Int.init)

let a = input[0]
let b = input[1]

print((a + b) * (a - b))