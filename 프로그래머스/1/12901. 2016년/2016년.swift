func solution(_ a:Int, _ b:Int) -> String {
    let endOfMonths = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    // 1 % 7 == 1 : 금요일
    // 2: 토, 3: 일, 4: 월, 5: 화, 6: 수, 0: 목
    let i = a - 1
    let days = endOfMonths[0..<i].reduce(0, +) + b
    
    return switch days % 7 {
        case 0: "THU"
        case 1: "FRI"
        case 2: "SAT"
        case 3: "SUN"
        case 4: "MON"
        case 5: "TUE"
        case 6: "WED"
        default: ""
    }
}