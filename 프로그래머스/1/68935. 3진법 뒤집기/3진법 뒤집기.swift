import Foundation

func solution(_ n:Int) -> Int {
    let triple = String(n, radix: 3)
    return Int(String(triple.reversed()), radix: 3)!
}