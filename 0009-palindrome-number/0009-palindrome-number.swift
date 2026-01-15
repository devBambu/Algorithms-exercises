class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let arrX = String(x).map{ Int(String($0)) }
        return arrX == arrX.reversed()
    }
}