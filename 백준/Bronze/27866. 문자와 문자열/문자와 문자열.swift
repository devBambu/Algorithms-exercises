import Foundation

let input = readLine() ?? ""
let idx = Int(readLine() ?? "")!

let i = input.index(input.startIndex, offsetBy: idx - 1)
print(input[i])