import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    // 유저 신고 - 피신고자 인당 1회
    // k번 이상 신고 당하면 정지 -- 신고자에게 결과 알림
    // 유저별 결과 메일 수신 횟수 배열 return
    
    let setReport = Set(report)
    
    var reportList = [String: [String]]() // [유저: [신고한 유저]]
    var reported = [String: Int]() // [유저: 신고 당한 횟수]
    
    for r in setReport {
        let arr = r.components(separatedBy: .whitespaces)
        
        let a = arr[0] // 신고자
        let b = arr[1] // 피신고자
        
        reportList[a, default: []].append(b)
        reported[b, default: 0] += 1
    }
    
    let result = Array(reported.filter { $0.value >= k }.keys) // 정지 당한 유저
    var mail = Array(repeating: 0, count: id_list.count)
    
    for (i, e) in id_list.enumerated() {
        for p in reportList[e, default: []] {
            mail[i] = reported[p, default: 0] >= k ? mail[i] + 1 : mail[i]
        }
        
        // let num = reportList[e, default: []].reduce(into: 0) {
        //     $0 = result.contains($1) ? $0 + 1 : $0
        // }
//        let num = reportList[e, default: []].filter { result.contains($0) }.count
//        mail[i] = num
        
        }
    
    
    return mail
}