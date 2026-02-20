import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    return arr.enumerated().map {
        if arr.count.isMultiple(of: 2) {
            return !$0.offset.isMultiple(of:2) ? $0.element + n : $0.element
        } else {
            return $0.offset.isMultiple(of:2) ? $0.element + n : $0.element
        }
    }
}