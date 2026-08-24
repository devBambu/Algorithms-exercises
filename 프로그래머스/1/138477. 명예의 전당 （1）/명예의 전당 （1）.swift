import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    (0..<score.count).reduce(into: [Int]()) { result, i in
        guard i >= (k - 1) else { 
            result.append(score[...i].min()!)
            return
        }
                                             
        let min = score[...i].sorted(by: >)[0..<k].min()
        result.append(min!)
    }
}