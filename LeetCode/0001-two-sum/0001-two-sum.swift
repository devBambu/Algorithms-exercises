class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = [] // 정답 배열
        for i in 0..<nums.count {
            guard (i + 1) < nums.count else { break } // range out of index 방지
            for j in (i + 1)..<nums.count { // 두 번째 숫자를 찾기 위한 반복문
                if nums[i] + nums[j] == target {
                    result = [i, j] // 조건에 맞다면 결과 배열 저장
                    break // 중첩 반복문 탈출
                }
            }
            if !result.isEmpty { break } // 정답을 찾았다면 반복문 탈출
        }
        return result
    }
}

// 런타임이 0에 가까운 풀이가 있어 차용
extension Solution {
    func solution(_nums: [Int], _ target :Int) -> {
        var result = []
        var map = [Int: Int]() // [num: idx] 딕셔너리 생성

        for (i, num) in nums.enumerated() {
            let complement = target - num

            if let j = map[complement] { // 딕셔너리에 정답에 필요한 두 번째 숫자가 이미 포함되어있다면 해당 밸류값(==해당 숫자의 인덱스)을 result 배열에 함께 저장
                result = [i, j]
                break
            }
            map[num] = i
        }
        return result
    }
}
