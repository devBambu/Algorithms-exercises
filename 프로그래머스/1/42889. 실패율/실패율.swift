import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    // 실패율 = 미클리어 플레이어 수 / 스테이지 도달 플레이어 수
    // N: 전체 스테이지 개수
    // stages: 플레이어들의 현재 스테이지 번호
    // return: 실패율이 높은 스테이지부터 내림차순 배열
    
    var stagePlayers = [Int: Int]() // [스테이지: 현재 스테이지에 머물고 있는 플레이어 수]
    
    for s in stages {
        stagePlayers[s, default: 0] += 1
    }
    
    return (1...N).map { stage in
        let players = stages.filter { $0 >= stage }.count // 스테이지 도달 플레이어 수
        let failed = stagePlayers[stage] ?? 0
        
        if players == 0 || failed == 0 {
            return Double(0)
        } else {
            return Double(failed) / Double(players)
        }
    }.enumerated()
    .sorted {
        if $0.element == $1.element {
            return $0.offset < $1.offset
        } else {
            return $0.element > $1.element
        }
    }
    .map { $0.offset + 1 }
}