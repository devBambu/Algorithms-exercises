class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let sortedStrs = strs.sorted()
        var prefix = sortedStrs.first!.map { String($0) }

        for s in strs {
            let word = s.map { String($0) }

            for i in 0..<prefix.count {
                guard i < word.count else { break }
                if prefix[i] != word[i] {
                    prefix = Array(prefix[..<i])
                    break
                }
            }
        }

        return prefix.isEmpty ? "" : prefix.joined()
    }
}