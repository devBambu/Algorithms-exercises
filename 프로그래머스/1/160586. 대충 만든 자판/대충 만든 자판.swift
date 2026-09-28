import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    return targets.map { target in
        var count = 0
                 
        for t in target {
            let map = keymap.compactMap { Array($0).firstIndex(of: t) }
            .sorted(by: <) // 키 입력 횟수가 적은 순으로 정렬
            
            // 문자열을 작성할 수 없을 경우 예외 처리
            guard let c = map.first else {
                count = -1
                break
            }
            
            count += c + 1
        }
                 
        return count
    }
}