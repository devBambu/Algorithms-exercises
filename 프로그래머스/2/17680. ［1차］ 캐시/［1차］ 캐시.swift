func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    // LRU 캐시: 가장 오랫동안 사용되지 않은 캐시를 삭제
    
    // 캐시 딕셔너리 - [도시 이름: (실행 순서, 실행 횟수)
    var cache = [String: (index: Int, count: Int)]()
    var runTime = 0
    
    guard cacheSize != 0 else { return cities.count * 5 }
    
    for i in cities.indices {
        let city = cities[i].lowercased()
        
        if cache[city] != nil { // cache hit
            cache[city] = (0, cache[city]!.count + 1)
            for c in cache {
                if c.key != city { cache[c.key]?.index += 1 }
            }
            runTime += 1
        } else if cache[city] == nil, cache.count < cacheSize { // cache miss
            cache[city, default: (0, 0)] = (index: 0, count: 1)
            for c in cache {
                if c.key != city { cache[c.key]?.index += 1 }
            }
            runTime += 5
        } else { // cache miss && 캐시 교체 필요
            let first = cache.sorted {
                $0.value.count < $1.value.count // count 작은순
            }.sorted {
                $0.value.index > $1.value.index // 실행 오래된 순
            }.first
            
            guard let sorted = first else { break }
            
            cache.removeValue(forKey: sorted.key)
            
            cache[city] = (index: 0, count: 1)
            for c in cache {
                if c.key != city { cache[c.key]?.index += 1 }
            }
            runTime += 5
        }
    }
    
    return runTime
}