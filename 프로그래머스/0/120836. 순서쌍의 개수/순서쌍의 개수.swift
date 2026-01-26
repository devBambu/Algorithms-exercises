import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter{ n.isMultiple(of: $0) }.count
}