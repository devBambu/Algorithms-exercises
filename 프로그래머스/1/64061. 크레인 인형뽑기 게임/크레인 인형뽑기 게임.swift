import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var bag = [Int]() // 바구니
    var playing = board
    var score = 0
    
    for crane in moves {
        // 타겟 위치
        let target = playing.flatMap { row in
            row.enumerated().filter { $0.offset == crane - 1 }
            .map { $0.element }
        }
        
        guard !target.allSatisfy { $0 == 0 }, // 해당 위치에 인형이 없을 경우 continue
        let doll = target.enumerated().first(where: { $0.element != 0 }) else { continue }
        
        playing[doll.offset][crane - 1] = 0 // 인형을 뺐으므로 보드판 갱신
        
        let last = bag.last ?? 0

        if doll.element == last {
            score += 1
            bag.removeLast()
        } else {
            bag.append(doll.element)
        }
        
    }
    return score * 2 // 점수가 아니라 '인형의 개수'를 반환해야 함
}