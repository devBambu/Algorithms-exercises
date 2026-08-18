import Foundation

func solution(_ s:String) -> [Int] {
    let arr = Array(s)
    
    return s.enumerated().map {
        let last = arr[0..<$0.offset].lastIndex(of: $0.element)
        return $0.offset - (last ?? ($0.offset + 1))
    }
}