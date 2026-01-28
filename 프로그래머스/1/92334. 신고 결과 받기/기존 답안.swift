import Foundation

// 테스트 케이스 3번과 21번(?)에서 시간 초과 오류 발생

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    // 유저 신고 - 피신고자 인당 1회
    // k번 이상 신고 당하면 정지 -- 신고자에게 결과 알림
    // 유저별 결과 메일 수신 횟수 배열 return
  
  // 1. 재시도 - report를 Set으로 만들어 중복을 없앰
  // --> 연산 시간은 쪼금 빨라졌지만 여전히 시간 초과 오류 발생
    let setReport = Set(report)
    
    var reportList = [String: [String]]() // [유저: [신고한 유저]]
    var reported = [String: Int]() // [유저: 신고 당한 횟수]
    
    for r in report {
        let arr = r.components(separatedBy: .whitespaces)
        
        let a = arr[0] // 신고자
        let b = arr[1] // 피신고자
        
        if !reportList[a, default: []].contains(b) {
            reportList[a, default: []].append(b)
            reported[b, default: 0] += 1
        }
    }
    
    let result = reported.filter { $0.value >= k }.keys // 정지 당한 유저
    
    var mail = Array(repeating: 0, count: id_list.count)
    
    for (i, e) in id_list.enumerated() {
      // 2. 재시도 - for문 대신 filter를 사용해서 mail[i]에 들어갈 숫자를 바로 생성
      // --> 테스트케이스 21번(?)은 통과했으나 3번은 여전히 시간초과
      let num = reportList[e, default: []].filter { result.contains($0) }.count
      
      // 3. filter문 대신 reduce로 변경
      // --> 2.와 큰 차이 없음. 여전히 3번 시간초과
      let num = reportList[e, default: []].reduce(into: 0) {
        $0 = result.contains($1) ? $0 + 1 : $0
      }
      
      mail[i] = num
      
        // for p in result {
        //     if reportList[e, default: []].contains(p) {
        //         mail[i] += 1
        //     }
        // }
    }
    
    return mail
}

