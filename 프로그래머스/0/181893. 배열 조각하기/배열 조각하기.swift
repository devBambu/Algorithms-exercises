import Foundation

//MARK: 나의 풀이
func solution(_ arr:[Int], _ query:[Int]) -> [Int] {    
    var result = arr

    query.enumerated().forEach {
        if $0.offset % 2 == 0 { // 인덱스가 홀수일 경우
            result = result[...$0.element].map { Int($0) }
        } else { // 인덱스가 짝수일 경우
            result = result[$0.element...].map { Int($0) }
        }
    }
    
    return result
}

//MARK: 튜터님 풀이
/* 나의 풀이의 경우, 인덱스를 순회하면서 새로운 배열을 복사해넣고 있음.
이는 반복문이 돌 때마다 복사 비용을 발생시키므로, 해당 풀이에서는 배열을 복사하는 밥법이 아닌 범위를 계산하여 한번에 배열을 반환하는 방법을 채택함. */

func solution2(_ arr: [Int], _ query: [Int]) -> [Int] {
// arr의 전체 범위가 range의 초기값. (reduce의 초기값)
    let range = query.enumerated().reduce(arr.indices) { range, query in
            // query.offset == query의 인덱스
            // query.element == query[i]
            if query.offset.isMultiple(of: 2) { 
                // 짝수: 뒷부분 제거(== 앞부분 남김)
                // 남는 범위: [현재 시작점]...[현재 시작점 + query[i]] --- range는 기존 배열 arr을 기준으로 변형되고 있으나 문제는 query를 순회하며 잘린 배열을 기준으로 다시 배열이 잘리고 있음. 따라서 변화를 반영하기 위해 현재 시작점을 범위에 더해줌
                return range.lowerBound..<(range.lowerBound + query.element + 1)
            } else {
                // 홀수: 앞부분 제거(== 뒷부분 남김)
                // 남는 범위: [현재 시작점 + query[i]]...[현재 끝점]
                return (range.lowerBound + query.element)..<range.upperBound // --- upperBound는 범위의 끝을 반환함. 현재 ..< 연산자 형태로 쓰이고 있으므로 upperBound는 배열의 크기와 동일 ( +1 할 필요가 없음)
            }
    }
    return Array(arr[range])
}
