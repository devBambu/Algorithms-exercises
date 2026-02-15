import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    return flag.enumerated().reduce(into: [Int]()) {
        if $1.element {
            $0 = $0 + Array(repeating: arr[$1.offset], count: arr[$1.offset] * 2)
        } else {
            $0.isEmpty ? () : $0.removeLast(arr[$1.offset])
        }
    }
}