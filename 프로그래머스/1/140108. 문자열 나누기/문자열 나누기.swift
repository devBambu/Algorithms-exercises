import Foundation

func solution(_ s:String) -> Int {
    var splited = 0
    var targetString = Array(s)
    
    while !targetString.isEmpty {
        let x = targetString[0]
    
        var countX = 0
        var countLeft = 0
    
        for t in targetString {
            if t == x {
                countX += 1
            } else {
                countLeft += 1
            }
        
            if countX == countLeft { break }
        }
        
        targetString.removeFirst(countX + countLeft)
        splited += 1
    }
    
    return splited
}