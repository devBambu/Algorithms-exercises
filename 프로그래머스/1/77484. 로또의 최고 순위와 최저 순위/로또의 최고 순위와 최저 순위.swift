import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let lowScore = lottos.count(where: { win_nums.contains($0) }) // 모르는 번호가 다 틀렸을 경우 - 번호 일치 최저의 경우의 수
    let highScore = lowScore + lottos.count(where: { $0 == 0 }) // 모르는 번호가 다 맞았을 경우 - 번호 일치 최고의 경우의 수
    
    return [highScore, lowScore].map {
        switch $0 {
            case 6: 1
            case 5: 2
            case 4: 3
            case 3: 4
            case 2: 5
            default: 6
        }
    }
}