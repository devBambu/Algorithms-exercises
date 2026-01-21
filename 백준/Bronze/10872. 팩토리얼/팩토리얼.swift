import Foundation

let n = Int(readLine() ?? "")!

n == 0 ? print(1) : print((1...n).reduce(1, *))