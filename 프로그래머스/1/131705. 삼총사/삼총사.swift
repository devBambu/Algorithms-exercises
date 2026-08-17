import Foundation

// dfs 재귀함수를 활용한 풀이
func solution(_ number:[Int]) -> Int {
    var result = 0
    
    func dfs(_ start: Int, _ sum: Int, _ count: Int) {
        if count == 3 { // 고른 숫자가 3개일 때 재귀 호출 종료
            result = sum == 0 ? result + 1 : result
            return
        }
        
        for i in start..<number.count { // start부터 시작함으로써 중복 원소 선택 방지
            dfs(i + 1, sum + number[i], count + 1)
        }
    }
    
    dfs(0, 0, 0)
    
    return result
}