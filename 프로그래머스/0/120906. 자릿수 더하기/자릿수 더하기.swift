import Foundation

func solution(_ n:Int) -> Int {
    return String(n).reduce(into: 0) { $0 += Int(String($1))! }
}