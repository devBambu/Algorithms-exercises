class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanMap: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var roman: [Int] = []

        for r in s {
            roman.append(romanMap[r]!)
        }
        
        // 앞 < 뒤 -> -앞 숫자
        for i in 0..<roman.count - 1 {
            guard roman.count != 1 else { break } // out of index range 에러 방지
            if roman[i] < roman[i + 1]  { // 뒤 숫자보다 작다면 음수화
                roman[i] *= -1
            }
        }
        return roman.reduce(0, +)
    }
}