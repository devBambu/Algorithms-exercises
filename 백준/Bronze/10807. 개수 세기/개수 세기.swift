import Foundation

readLine()
let arr = (readLine() ?? "").components(separatedBy: .whitespaces).compactMap(Int.init)

let num = Int(readLine() ?? "")!

var count = 0

for n in arr {
    if n == num { count += 1 }
}
print(count)