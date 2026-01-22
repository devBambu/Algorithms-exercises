import Foundation

let input = (readLine() ?? "").components(separatedBy: .whitespaces).compactMap(Int.init)

let sum = input.reduce(0) { $0 + ($1 * $1) }

print(sum % 10)