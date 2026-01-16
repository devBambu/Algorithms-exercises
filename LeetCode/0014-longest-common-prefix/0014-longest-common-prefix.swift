class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let sortedStrs = strs.sorted() // 제시 배열 오름차순 정렬
        var prefix = sortedStrs.first!.map { String($0) } // 가장 짧은 단어 할당 -- 아래 prefix 비교 반복문에서 인덱스 오류를 일으키지 않기 위해 가장 작은 단어를 할당
                                                          // + 공통 접두사의 길이 < 주어진 가장 짧은 단어 (항상)
        for s in strs {
            let word = s.map { String($0) } // 비교할 단어

            for i in 0..<prefix.count { // prefix를 순회하며 비교
                if prefix[i] != word[i] { // 비교한 두 글자가 다르다면
                    prefix = Array(prefix[..<i]) // prefix 갱신
                    break
                }
            }
        }
        return prefix.isEmpty ? "" : prefix.joined()
    }
}
