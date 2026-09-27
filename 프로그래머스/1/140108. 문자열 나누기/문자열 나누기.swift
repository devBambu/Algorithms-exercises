import Foundation

func solution(_ s:String) -> Int {
    var splited = 0
    var x: Character? = nil
    var xCount = 0
    
    // 문자열 순서 그대로 읽어나가면서 문자열을 분리함 -- 중첩문을 이중으로 사용할 필요가 없음
    for t in s {
        if x == nil { x = t }
        xCount += x! == t ? 1 : -1 // x와 타겟이 동일하면 카운트를 +1, 아니면 -1
        
        if xCount == 0 { // x와 x가 아닌 다른 글자들이 나온 횟수가 동일할 때
            splited += 1 // 분리 횟수 +1
            x = nil // x 초기화
        }
    }
    
    // xCount가 동일하지 않은데 문자열 조회가 종료된 경우 분리 횟수 +1
    return xCount == 0 ? splited : splited + 1 
}