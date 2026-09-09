import Foundation

func solution(_ babbling:[String]) -> Int {
    let pronounces = ["aya", "ye", "woo", "ma"]
    
    return babbling.reduce(0) { count, word in
        var target = word                        
        var i = 0
        
        while true {
            let pronounce = pronounces[i]
            
            // 연속 발음 예외
            if target.hasPrefix(pronounce + pronounce) { break }
            
            if target.hasPrefix(pronounce) {
                target.trimPrefix(pronounce) // 발음 제거
                i = 0 // 인덱스 초기화
            } else if i == pronounces.count - 1 { 
                // Prefix가 없고 마지막 인덱스일 때 탈출
                break
            } else {
                // 인덱스 변경
                i += 1
            }
        }
        return target.isEmpty ? count + 1 : count
    }
}