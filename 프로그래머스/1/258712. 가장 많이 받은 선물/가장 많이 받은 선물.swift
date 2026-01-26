import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    // 기록 o -- 기록 많음이 1개 받음
    // 기록 x or 동일 -- 선물 지수 큼이 1개 받음
    // 선물 지수 = 이번달까지 준 선물 수 - 받은 수
    // 선물 지수도 동일하다면 주고받지 않음
    // 선물을 가장 받을 사람의 선물의 수

    // (send, receive): Int --> 튜플은 Hashble X
    // - 처음에는 var record = [(send: String, receive: String): Int]() 로 두고 풀려고 했으나, 코드 실행 시 튜플이 Hashable 하지 않아 딕셔너리로 사용 불가
    // - 튜터님 조언으로 String꼴로 변경
    
    var record = [String: Int]() // 선물 주고받는 기록
    var score = [String: Int]() // 선물 지수
    
    for r in gifts {
        record[r, default: 0] += 1
        
        let arr = r.components(separatedBy: .whitespaces)
        score[arr[0], default: 0] += 1 // 보냈다면 +1
        score[arr[1], default: 0] -= 1 // 받았다면 -1
    }

    var result = [String: Int]()

    for (i, e) in friends.enumerated() {
        if e == friends.last { break }
        
        let a = e
        
        for j in (i + 1)..<friends.count {
            let b = friends[j]
        
            let keyA = a + " " + b // a -> b 선물 준 횟수를 구하기 위한 키
            let keyB = b + " " + a // b -> a 선물 준 횟수를 구하기 위한 키
        
            let recordA = record[keyA] ?? 0
            let recordB = record[keyB] ?? 0
         
            if recordA > recordB { // A가 B보다 선물을 더 많이 준 경우
                result[a, default: 0] += 1
            } else if recordA < recordB { // B가 A보다 선물을 더 많이 준 경우
                result[b, default: 0] += 1
            } else { // A와 B의 선물 준 횟수가 동일하거나, 선물을 주고 받은 기록이 없는 경우
                if score[a, default: 0] > score[b, default: 0] { // A의 선물 지수가 B보다 높은 경우
                    result[a, default: 0] += 1
                } else if score[a, default: 0] < score[b, default: 0] { // B의 선물 지수가 A보다 높은 경우
                    result[b, default: 0] += 1
                }
                // A와 B의 선물 지수가 같은 경우 -- 아무 일도 일어나지 않음
            }
        }
    }

    return result.values.sorted(by: >).first ?? 0
}
