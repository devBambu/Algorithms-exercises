func solution(_ arr:[Int], _ k:Int) -> [Int] {
    let result = arr.reduce(into: [Int]()) {
        if $0.count == k { return }
        if !$0.contains($1) { // 지속해서 결과 배열 $0이 $1를 가지고 있는지 contains 연산 필요 -- 연산 시간 오래 걸림
            $0.append($1)
        }
    }
    return result.count < k ? result + Array(repeating: -1, count: k - result.count) : result
}

// 제출 결과
// 테스트 1 〉	통과 (0.06ms, 16.4MB)
// 테스트 2 〉	통과 (0.04ms, 16.2MB)
// 테스트 3 〉	통과 (0.04ms, 16.3MB)
// 테스트 4 〉	통과 (0.06ms, 16.4MB)
// 테스트 5 〉	통과 (0.06ms, 16.3MB)
// 테스트 6 〉	통과 (0.08ms, 16.5MB)
// 테스트 7 〉	통과 (1.78ms, 16.4MB)
// 테스트 8 〉	통과 (1.88ms, 16.4MB)
// 테스트 9 〉	통과 (1.51ms, 16.3MB)
// 테스트 10 〉	통과 (53.64ms, 16.7MB)
// 테스트 11 〉	통과 (53.83ms, 16.9MB)
// 테스트 12 〉	통과 (34.57ms, 16.4MB)
// 테스트 13 〉	통과 (32.50ms, 16.6MB)
// 테스트 14 〉	통과 (34.47ms, 16.8MB)
// 테스트 15 〉	통과 (50.43ms, 16.6MB)
// 테스트 16 〉	통과 (498.28ms, 17.3MB)
// 테스트 17 〉	통과 (301.49ms, 17.5MB)
// 테스트 18 〉	통과 (312.90ms, 17.4MB)
// 테스트 19 〉	통과 (50.82ms, 17.3MB)
// 테스트 20 〉	통과 (51.84ms, 17.3MB)
