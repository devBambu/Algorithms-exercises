import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    var delete = delete_list
    return arr.reduce(into: [Int]()) { result, num in
        if delete.contains(num) {
            delete.removeAll { $0 == num }
        } else { 
            result.append(num)
        }
    }
}