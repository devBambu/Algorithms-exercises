import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let calendar = Calendar.current
    let comp = DateComponents(year: 2016, month: a, day: b)
    let date = calendar.date(from: comp)!
    let weekday = calendar.dateComponents([.weekday], from: date).weekday
    
    return switch weekday {
        case 1: "SUN"
        case 2: "MON"
        case 3: "TUE"
        case 4: "WED"
        case 5: "THU"
        case 6: "FRI"
        case 7: "SAT"
        default: ""
    }
}