import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    if arr.count.isMultiple(of: 2) {
        return arr.enumerated().map {
            if !$0.offset.isMultiple(of:2) { return $0.element + n }
            else { return $0.element }
        }
    } else {
        return arr.enumerated().map {
            if $0.offset.isMultiple(of:2) { return $0.element + n }
            else { return $0.element }
        }
    }
}