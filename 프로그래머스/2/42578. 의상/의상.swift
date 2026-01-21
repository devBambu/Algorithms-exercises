import Foundation

// 튜터님과 다른 분들의 조언으로 바꾼 답안...
func solution(_ clothes:[[String]]) -> Int {
    // 의상 종류 key
    var dic: [String: Int] = [:]
    
    clothes.forEach {
        dic[$0[1], default: 0] += 1
    }
    let arr = Array(dic.values).map { $0 + 1 } // '안 입는다'라는 선택지를 각 의상에 추가

    return arr.reduce(1, *) - 1 // 모든 의상을 입지 않는 경우의 수 1을 제외
}

// 기존 답안
// 근데 애초에 경우의 수를 구하는 식 자체가 이상했던 것 같음..
func solution2(_ clothes: [[String]]) -> Int {
    // 의상 종류 key
    var dic: [String: Int] = [:]
    
    clothes.forEach {
        dic[$0[1], default: 0] += 1
    }

    // value.count * value.count * ... -> 하나씩 없애가면서

    var arr = Array(dic.values)
    var result = 0
    
    while !arr.isEmpty {
        result += arr.reduce(1, *)
        if arr.count != 1 {
            result += arr.first! // 의상 단독으로만 입는 경우
        }
        arr.removeFirst() // 의상 종류 1개를 제거 == 입지 않는 경우
    }
        
    return result
}
