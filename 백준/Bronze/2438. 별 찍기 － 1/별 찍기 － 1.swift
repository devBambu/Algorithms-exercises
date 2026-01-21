import Foundation

let num = Int(readLine() ?? "")!

for n in 1...num {
    print(String(repeating: "*", count: n))
}