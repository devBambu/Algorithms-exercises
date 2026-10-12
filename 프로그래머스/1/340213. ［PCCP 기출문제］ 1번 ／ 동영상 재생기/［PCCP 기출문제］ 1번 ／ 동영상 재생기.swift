import Foundation

func solution(_ video_len:String, _ pos:String, _ op_start:String, _ op_end:String, _ commands:[String]) -> String {
    let (video, opStart, opEnd, start) = (
        transToSeconds(from: video_len),
        transToSeconds(from: op_start),
        transToSeconds(from: op_end),
        transToSeconds(from: pos)
    )

    var current = (opStart...opEnd) ~= start ? opEnd : start // 현재 위치: '~='연산자: 범위 안에 있는지를 판단하는 패턴 매칭 연산자
    
    for (i, command) in commands.enumerated() {        
        switch command {
        case "prev":
            current = max(0, current - 10)
        case "next":
            current = min(video, current + 10)
         default:
            break
        }
        
        current = (opStart...opEnd) ~= current ? opEnd : current // 오프닝 건너뛰기
    }
    
    return String(format: "%02d:%02d", current / 60, current % 60)
    
    func transToSeconds(from string: String) -> Int {
        let components = string.components(separatedBy: ":")
        let minute = Int(components[0]) ?? 0
        let second = Int(components[1]) ?? 0
        
        return (minute * 60) + second
    }
    
}