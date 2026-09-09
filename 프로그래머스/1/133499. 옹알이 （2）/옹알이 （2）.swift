import Foundation

func solution(_ babbling:[String]) -> Int {
    let pronounces = ["aya", "ye", "woo", "ma"]
    
    return babbling.filter { word in 
        var target = word
        var previous = ""
                     
        while !target.isEmpty {
            var matched = false
            
            for pronounce in pronounces {
                // 중복 발음이 아님 && 타겟이 Prefix를 가질 때
                if previous != pronounce && target.hasPrefix(pronounce) {
                    target.trimPrefix(pronounce) // 발음 제거
                    matched = true // 매칭 o
                    previous = pronounce
                    break
                }
            }
            
            // 매칭 x일 경우, false 반환 - filter 미충족
            if !matched { return false }
        } 
        
        return true
    }.count // 발음이 가능한 경우만 count
}