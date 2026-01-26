import Foundation

func solution(_ n:Int) -> Int {
    return Double(n).squareRoot() == floor(Double(n).squareRoot()) ? 1 : 2
}