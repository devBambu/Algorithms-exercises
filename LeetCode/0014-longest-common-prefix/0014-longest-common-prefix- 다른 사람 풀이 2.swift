class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let sortedStrs = strs.sorted() // 제시 배열 오름차순 정렬
        var prefix = sortedStrs.first!.map { String($0) } // 가장 짧은 단어 할당

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