// 초기 설계는 cache = [(city: String, count: Int)] -- [(도시 이름, 실행 횟수)], 배열의 인덱스가 실행 순서
// 도시 이름에 따른 실행 횟수 조회가 복잡해진다고 생각하여 딕셔너리로 변경

// --> 알고보니 문제를 잘못 이해했었다... 문제는 LRU 방식으로 오래된 캐시를 교체하기를 요구하고 있다. 따라서 사용한지 가장 오래된 캐시를 삭제하기만 하면 돼서 실행 횟수를 셀 필요가 없었던 것이다..
// --> 나는 문제의 캐시 교체 방식을 '사용 빈도가 적고 + 사용한지 오래된 캐시'를 삭제해야한다고 이해해서 아래와 같이 구현했었다. 실행 횟수를 전혀 고려하지 않는다면 딕셔너리를 사용할 이유가 없다고 생각한다.

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    // LRU 캐시: 가장 오랫동안 사용되지 않은 캐시를 삭제
    
    // 캐시 딕셔너리 - [도시 이름: (실행 순서, 실행 횟수)
    // 실행 순서(index) 0 > 1 > 2 : 가장 최근에 실행된 순, 0이 가장 최근
    var cache = [String: (index: Int, count: Int)]()
    var runTime = 0 // 실행 시간
    
    // 캐시 사이즈가 0일 경우
    guard cacheSize != 0 else { return cities.count * 5 }
    
    for e in cities {
        let city = e.lowercased()
        
        if cache[city] != nil { // cache hit
            cache[city] = (0, cache[city]!.count + 1) // count 1 증가, index 변경
            runTime += 1
        } else if cache[city] == nil, cache.count < cacheSize { // cache miss
            cache[city] = (index: 0, count: 1) // 캐시 추가
            runTime += 5
        } else { // cache miss && 캐시 교체 필요
            let first = cache.sorted {
                $0.value.count < $1.value.count // count 작은순
            }.sorted {
                $0.value.index > $1.value.index // 실행 오래된 순
            }.first
            
            guard let sorted = first else { break }
            
            cache.removeValue(forKey: sorted.key) // 실행 횟수가 가장 적고, 실행한지 가장 오래된 캐시를 삭제
            
            cache[city] = (index: 0, count: 1) // 새로운 캐시 추가
            runTime += 5
        }
        
        // 실행 순서 증가
        for c in cache {
            if c.key != city { cache[c.key]?.index += 1 }
        }
    }
    
    return runTime
}

// 실행 결과
// 테스트 1 〉	통과 (0.30ms, 16.4MB)
// 테스트 2 〉	통과 (0.06ms, 16.2MB)
// 테스트 3 〉	통과 (0.19ms, 16.5MB)
// 테스트 4 〉	통과 (0.19ms, 16.3MB)
// 테스트 5 〉	통과 (0.14ms, 16.3MB)
// 테스트 6 〉	통과 (0.02ms, 16.5MB)
// 테스트 7 〉	통과 (0.03ms, 16.6MB)
// 테스트 8 〉	통과 (0.06ms, 16.3MB)
// 테스트 9 〉	통과 (0.06ms, 16.3MB)
// 테스트 10 〉	통과 (1.06ms, 16.3MB)
// 테스트 11 〉	통과 (8901.14ms, 21.8MB)
// 테스트 12 〉	통과 (0.77ms, 16.5MB)
// 테스트 13 〉	통과 (1.02ms, 16.5MB)
// 테스트 14 〉	통과 (2.94ms, 16.5MB)
// 테스트 15 〉	통과 (2.90ms, 16.4MB)
// 테스트 16 〉	통과 (4.42ms, 16.5MB)
// 테스트 17 〉	통과 (0.02ms, 16.6MB)
// 테스트 18 〉	통과 (17.64ms, 16.5MB)
// 테스트 19 〉	통과 (43.59ms, 16.4MB)
// 테스트 20 〉	통과 (78.82ms, 16.6MB)
