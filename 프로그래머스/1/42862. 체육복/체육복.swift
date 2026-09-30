import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var available = reserve.filter { !lost.contains($0) } // 빌려줄 수 있는 학생들
    let needToBorrow = lost.filter { !reserve.contains($0) }.sorted(by: <)
    var result = n - needToBorrow.count
    
    for l in needToBorrow {
        if let i = available.firstIndex(of: l - 1) {
            available.remove(at: i)
            result += 1
        } else if let i = available.firstIndex(of: l + 1) {
            available.remove(at: i)
            result += 1
        }
    }
    
    return result
}