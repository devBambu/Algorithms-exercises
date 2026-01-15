class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = []
        for i in 0..<nums.count {
            guard (i + 1) < nums.count else { break }
            for j in (i + 1)..<nums.count {
                if nums[i] + nums[j] == target {
                    result = [i, j]
                    break
                }
            }
            if !result.isEmpty { break }
        }
        return result
    }
}