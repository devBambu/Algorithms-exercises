import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    return targets.map { target in
        var count = 0
        var letterCount = [Character: Int]()
                        
        for t in target {
            if let c = letterCount[t] { // 이미 조회한 글자일 경우
                count += c
            } else {
                let map = keymap.compactMap { Array($0).firstIndex(of: t) }
                .sorted(by: <) // 키 입력 횟수가 적은 순으로 정렬
                
                // 문자열을 작성할 수 없을 경우 반복문 탈출
                guard let c = map.first else {
                    count = -1
                    break
                }
                
                letterCount[t] = c + 1
                count += c + 1
            }
        }
                 
        return count
    }
}