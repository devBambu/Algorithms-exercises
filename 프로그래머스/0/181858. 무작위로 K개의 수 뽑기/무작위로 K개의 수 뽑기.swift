import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var num = Set(arr) // Set으로 변환
    let result = arr.reduce(into: [Int]()) {
        if num.isEmpty || $0.count == k { return }
        if num.contains($1) { // Set은 해시 연산을 사용하므로 contains 연산 사용 시 O(1)의 빠른 시간 복잡도를 가짐
            $0.append($1)
            num.remove($1)
        }
    }
    return result.count < k ? result + Array(repeating: -1, count: k - result.count) : result
}

// 제출 결과 - 배열 contains 사용 시보다 8배정도 빠름
// 테스트 1 〉	통과 (0.09ms, 16.6MB)
// 테스트 2 〉	통과 (0.06ms, 16.3MB)
// 테스트 3 〉	통과 (0.06ms, 16.3MB)
// 테스트 4 〉	통과 (0.07ms, 16.5MB)
// 테스트 5 〉	통과 (0.07ms, 16.5MB)
// 테스트 6 〉	통과 (0.09ms, 16.6MB)
// 테스트 7 〉	통과 (0.27ms, 16.5MB)
// 테스트 8 〉	통과 (0.20ms, 16.4MB)
// 테스트 9 〉	통과 (0.16ms, 16.4MB)
// 테스트 10 〉	통과 (0.93ms, 16.7MB)
// 테스트 11 〉	통과 (0.88ms, 16.7MB)
// 테스트 12 〉	통과 (0.76ms, 16.7MB)
// 테스트 13 〉	통과 (1.31ms, 16.5MB)
// 테스트 14 〉	통과 (0.97ms, 16.6MB)
// 테스트 15 〉	통과 (1.28ms, 16.6MB)
// 테스트 16 〉	통과 (6.01ms, 17.3MB)
// 테스트 17 〉	통과 (5.87ms, 17.5MB)
// 테스트 18 〉	통과 (5.79ms, 17.4MB)
// 테스트 19 〉	통과 (6.67ms, 17.2MB)
// 테스트 20 〉	통과 (6.28ms, 17.4MB)
