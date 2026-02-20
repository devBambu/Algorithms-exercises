import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var num = Set(arr)
    let result = arr.reduce(into: [Int]()) {
        if num.isEmpty || $0.count == k { return }
        if num.contains($1) {
            $0.append($1)
            num.remove($1)
        }
    }
    return result.count < k ? result + Array(repeating: -1, count: k - result.count) : result
}