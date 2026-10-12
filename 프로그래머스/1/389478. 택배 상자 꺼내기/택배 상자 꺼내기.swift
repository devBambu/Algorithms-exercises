import Foundation

func solution(_ n:Int, _ w:Int, _ num:Int) -> Int {
    // w: 가로 수
    // n: 택배 총 개수
    // num: 찾는 택배 번호
    let (total, target) = (n - 1, num - 1)
    
    let height = total / w // 택배를 쌓았을 때의 최대 높이
    let rest = height % 2 == 0 ? total % w : w - (total % w) - 1 // 제일 윗줄 상자 마지막 인덱스
    let targetRow = target / w
    let targetColumn = targetRow % 2 == 0 ? target % w : w - (target % w) - 1
    
    if height % 2 == 0 {
        return targetColumn <= rest ? height - targetRow + 1 : height - targetRow
    } else {
        return targetColumn >= rest ? height - targetRow + 1 : height - targetRow
    }
}