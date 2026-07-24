import Foundation

func solution(_ board:[[Int]]) -> Int {
    // [0, 0, 0, 0, 0]
    // [0, 0, 0, 0, 0]
    // [0, 0, 0, 0, 0]
    // [0, 0, 1, 0, 0] -- (3, 2)
    // [0, 0, 0, 0, 0]
    // (2, 1), (2, 2), (2, 3)
    // (3, 1), (3, 3)
    // (4, 1), (4, 2), (4, 3)
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