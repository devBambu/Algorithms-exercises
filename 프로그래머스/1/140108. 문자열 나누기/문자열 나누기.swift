import Foundation

func solution(_ s:String) -> Int {
    var splited = 0
    var x: Character? = nil
    var xCount = 0
    
    for t in s {
        if x == nil { x = t }
        xCount += x! == t ? 1 : -1 // x와 타겟이 동일하면 카운트를 +1, 아니면 -1
        
        if xCount == 0 {
            splited += 1
            x = nil
        }
    }
    
    return xCount == 0 ? splited : splited + 1
}