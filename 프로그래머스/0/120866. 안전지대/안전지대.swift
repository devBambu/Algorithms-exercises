import Foundation

func solution(_ board:[[Int]]) -> Int {
    let num = board.count
    var danger = Set<[Int]>()
    
    board.enumerated().forEach { row in
        row.element.enumerated().forEach {
            if $0.element == 1 {
                let rowRange = max(0, row.offset - 1)..<min(num, row.offset + 2)
                let colRange = max(0, $0.offset - 1)..<min(num, $0.offset + 2)
                
                for r in rowRange {
                    for c in colRange {
                        danger.insert([r, c])
                    }
                }
            }
        }
    }
    
    return (num * num) - danger.count
}