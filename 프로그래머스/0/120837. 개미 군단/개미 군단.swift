import Foundation

func solution(_ hp:Int) -> Int {
    var ant = 0
    var target = hp
    
    while target > 0 {
        switch target {
        case 5...:
            ant += target / 5
            target = target % 5
        case 3..<5:
            ant += target / 3
            target = target % 3
        case ..<3:
            ant += target / 1
            target = 0
        default:
            continue
        }
    }
    return ant
}