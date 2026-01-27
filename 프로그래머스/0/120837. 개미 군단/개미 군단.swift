import Foundation

// 기존 답안
// - while문 내에서 switch문을 돌려 정답을 구한다.
func solution1(_ hp:Int) -> Int {
    var ant = 0
    var target = hp
    
    while target > 0 {
        switch target {
        case 5...:
            ant += target / 5
            target = target % 5
        case 3..<5:
            ant += target / 3
            target = target % 3
        case ..<3:
            ant += target / 1
            target = 0
        default:
            continue
        }
    }
    return ant
}

// 최종 답안
// 다른 사람의 풀이 참고 -- 기존 답안에서도 5로 1번 나누고, 3으로 1번 나누고, 1로 한번 나누는데, switch문으로 해야할 필요가 없다 생각하여 수정
func solution(_ hp:Int) -> Int {
    var target = hp
 
    return [5, 3, 1].reduce(into: 0) {
        $0 += target / $1
        target = target % $1
    }
}
