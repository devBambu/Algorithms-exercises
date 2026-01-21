import Foundation

let t = Int(readLine() ?? "")!

for _ in 0..<t {
    let nums = (readLine() ?? "").components(separatedBy: .whitespaces).map{ Int($0)! }
    print(nums.reduce(0, +))
}