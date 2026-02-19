// 초기 설계는 cache = [(city: String, count: Int)] -- [(도시 이름, 실행 횟수)], 배열의 인덱스가 실행 순서
// 도시 이름에 따른 실행 횟수 조회가 복잡해진다고 생각하여 딕셔너리로 변경

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    // LRU 캐시: 가장 오랫동안 사용되지 않은 캐시를 삭제
    
    // 캐시 딕셔너리 - [도시 이름: (실행 순서, 실행 횟수)
    // 실행 순서(index) 0 > 1 > 2 : 가장 최근에 실행된 순
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
