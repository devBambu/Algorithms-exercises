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
    
    var mail: [Int] = []
    
    for id in id_list {
        let num = reportList[id, default: []].reduce(0) {
            reported[$1, default: 0] >= k ? $0 + 1 : $0
        }
        mail.append(num)
    }
    
    return mail
}