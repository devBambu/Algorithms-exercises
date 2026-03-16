import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
    return board.enumerated().reduce(0) { num, row in
        let i = row.offset
        var sum = num
                                         
        for j in row.element.indices {
            if i + j <= k {
                sum += board[i][j]
            }
        }
        
        return sum
    }
}