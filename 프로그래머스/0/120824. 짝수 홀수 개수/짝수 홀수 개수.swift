import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return num_list.reduce(into: [0, 0]) {
        if $1.isMultiple(of: 2) {
            $0[0] += 1
        } else {
            $0[1] += 1
        }
    }
}