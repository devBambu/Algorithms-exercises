import Foundation

func solution(_ dartResult:String) -> Int {
    /*
    1. 게임은 총 3번의 기회, 각 0점 ~ 10점
    2. S, D, T 영역 존재 - 당첨 시 점수를 1제곱, 2제곱, 3제곱함. 점수마다 하나씩 존재
    3. 스타상(*) 당첨 시 바로 직전 점수, 해당 점수 2배
    4. 아차상(#) 당첨 시 해당 점수는 마이너스
    5. 스타상과 아차상은 중첩 가능.
    6. 스타상과 아차상은 점수마다 둘 중 하나만 존재 가능, 존재하지 않을 수도 있음
    
    입력(dartResult): "점수 | 보너스 | [옵션]"
    반환 -> 총 점수
    */
    
    var r = -1 // 현재 라운드
    var roundScore = Array(repeating: 0, count: 3)
    let bonus: [Character] = ["S", "D", "T"]
    
    for target in dartResult {
        // 점수일 경우
        if let num = Int(String(target)) {
            if r >= 0, num == 0, roundScore[r] == 1 {
                roundScore[r] = 10
            } else {
                r += 1
                roundScore[r] = num
            }
            continue
        }
        
        // 보너스일 경우
        if let times = bonus.firstIndex(of: target) {
            let score = roundScore[r]
            
            for t in 0..<times {
                roundScore[r] *= score
            }
            
            continue
        }
        
        // 옵션일 경우
        switch target {
            case "*":
            roundScore[r] *= 2
            if r > 0 { roundScore[r - 1] *= 2 }
            
            case "#":
            roundScore[r] *= -1
            
            default:
            break
        }
    }
    
    return roundScore.reduce(0, +)
}