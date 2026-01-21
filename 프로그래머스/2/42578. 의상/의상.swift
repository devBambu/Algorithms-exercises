import Foundation

func solution(_ clothes:[[String]]) -> Int {
    // 의상 종류 key
    
    var dic: [String: Int] = [:]
    
    clothes.forEach {
        dic[$0[1], default: 0] += 1
    }
    var arr = Array(dic.values).map { $0 + 1 }
    var result = 0
    
    return arr.reduce(1, *) - 1
    
//     while !arr.isEmpty {
//         result += arr.reduce(1, *)
//         arr.removeFirst()
//     }
    
//     return result - 1
}