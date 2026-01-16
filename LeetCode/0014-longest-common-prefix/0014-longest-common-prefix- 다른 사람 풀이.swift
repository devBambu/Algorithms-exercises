class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = strs.first! // prefix 초기값 설정

        for (i, element) in strs.enumerated() { // 제시된 문자열 배열 순회
            while !element.hasPrefix(prefix) { // 문자열 시작부분이 prefix를 포함하지 않는다면
                prefix.popLast() // prefix의 마지막 글자 삭제
                // prefix.popLast() -> prefix를 변형시킴
                // let a = prefix.popLast() 하면, element가 "flower"일 때, a == Optional("r")
            }
        }
        return prefix
    }
}
