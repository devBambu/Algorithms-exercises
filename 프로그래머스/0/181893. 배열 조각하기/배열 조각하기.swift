import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    
//     var result = arr

//     query.enumerated().forEach {
//         if $0.offset % 2 == 0 {
//             result = result[...$0.element].map { Int($0) }
//         } else {
//             result = result[$0.element...].map { Int($0) }
//         }
//     }
    
//     return result
    
    // arr의 전체 범위가 range의 초기값. (reduce의 초기값)
    let range = query.enumerated().reduce(arr.indices) { range, query in
            // query.offset == query의 인덱스
            // query.element == query[i]
            if query.offset.isMultiple(of: 2) { 
                // 짝수: 뒷부분 제거(== 앞부분 남김)
                // 남는 범위: [현재 시작점]...[현재 시작점 + query[i]]
                return range.lowerBound..<(range.lowerBound + query.element + 1)
            } else {
                // 홀수: 앞부분 제거(== 뒷부분 남김)
                // 남는 범위: [현재 시작점 + query[i]]...[현재 끝점]
                return (range.lowerBound + query.element)..<range.upperBound
            }
    }
    return Array(arr[range])
}