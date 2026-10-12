import Foundation

func solution(_ video_len:String, _ pos:String, _ op_start:String, _ op_end:String, _ commands:[String]) -> String {
    let (video, opStart, opEnd) = (
        transToSeconds(from: video_len),
        transToSeconds(from: op_start),
        transToSeconds(from: op_end)
    )

    var current = transToSeconds(from: pos) // 현재 위치
    
    for (i, command) in commands.enumerated() {
        if i == 0 {
            current = current >= opStart && current <= opEnd ? opEnd : current // 오프닝 건너뛰기
        }
        
        switch command {
        case "prev":
            current = max(0, current - 10)
        case "next":
            current = min(video, current + 10)
         default:
            break
        }
        
        current = current >= opStart && current <= opEnd ? opEnd : current// 오프닝 건너뛰기
    }
    
    let result = [current / 60, current % 60] // [분, 초]
    
    return result.reduce("") {
        let string = $1 < 10 ? "0" + String($1) : String($1)
        return $0.isEmpty ? string : $0 + ":\(string)"
    }
    
    func transToSeconds(from string: String) -> Int {
        let components = string.components(separatedBy: ":")
        let minute = Int(components[0]) ?? 0
        let second = Int(components[1]) ?? 0
        
        return (minute * 60) + second
    }
    
}