import Foundation

func solution(_ babbling:[String]) -> Int {
    return babbling.reduce(into: 0) { word, bab in
        var target = bab
        var pron = ["aya": 0, "ye": 0, "woo": 0, "ma": 0]
        var flag = false
        
        while !flag {
           for p in pron.keys {
               flag = true
               guard pron[p]! < 1 else { continue }
               
               if target.hasPrefix(p) {
                   target.trimPrefix(p)
                   pron[p]! += 1
                   flag = false
                   break
               }
            }
        }                         
                                     
        word += target.isEmpty ? 1 : 0
    }
}