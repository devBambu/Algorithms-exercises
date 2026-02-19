func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    // LRU 캐시: 가장 오랫동안 사용되지 않은 캐시를 삭제
    
    // 캐시 사이즈가 0일 경우
    guard cacheSize != 0 else { return cities.count * 5 }

    // 캐시 사이즈가 0이 아닐 경우
    var runTime = 0 // 실행 시간
    
    // 각 배열의 인덱스 == 캐시 실행 순서
    // --> 실행 오래된 순 (0 > 1 > 2), 2가 가장 최근
    var cacheCount = [Int]() // 캐시 실행 횟수 
    var cacheCity = [String]() // 캐시 도시 이름
    
    for e in cities {
        let city = e.lowercased()
        
        if cacheCity.contains(city) { // cache hit
            let i = cacheCity.firstIndex(of: city)!
            
            // 실행 순서 변경
            cacheCity.append(cacheCity.remove(at: i))
            cacheCount.append(cacheCount.remove(at: i) + 1) // 실행 횟수 추가
            
            runTime += 1
        } else { // cache miss
            if cacheCity.count >= cacheSize { // 빈 캐시가 없을 경우
                // 캐시 삭제
                cacheCity.removeFirst()
            }
            
            // 신규 캐시 추가
            cacheCity.append(city)
            cacheCount.append(1)
            
            runTime += 5
        }
    }
    return runTime
}