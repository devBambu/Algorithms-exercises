import Foundation

func solution(_ s:String) -> [Int] {
    return s.enumerated().map {
        let last = Array(s)[0..<$0.offset].lastIndex(of: $0.element)
        return last == nil ? -1 : $0.offset - last!
    }
}