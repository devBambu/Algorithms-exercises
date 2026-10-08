import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let parkMap = park.map { Array($0) }
    let maxHeight = park.count
    let maxWidth = park[0].count
    
    var dog = [0, 0] // 로봇 강아지 좌표
    
    for (i, row) in park.enumerated() {
        for (j, column) in row.enumerated() {
            if column == "S" { dog = [i, j] }
        }
    }
    
    for route in routes {
        let components = route.components(separatedBy: .whitespaces)
        guard let movement = Int(components[1]) else { continue }
        
        var move = dog
        
        switch components[0] {
            case "N", "S":            
            for _ in 0..<movement {
                move[0] = components[0] == "N" ? move[0] - 1 : move[0] + 1
                
                if (move[0] >= maxHeight || move[0] < 0) // 공원 범위를 초과하는 경우
                || parkMap[move[0]][move[1]] == "X" { // 장애물을 만나는 경우
                    move = dog // move 초기화
                    break // 반복문 탈출
                }
            }
            
            case "W", "E":
            for _ in 0..<movement {
                move[1] = components[0] == "W" ? move[1] - 1 : move[1] + 1
                
                if (move[1] >= maxWidth || move[1] < 0) // 공원 범위를 초과하는 경우
                || parkMap[move[0]][move[1]] == "X" { // 장애물을 만나는 경우
                    move = dog // move 초기화
                    break // 반복문 탈출
                }
            }
            
            default:
            break
        }
        
        dog = move // 강아지 위치 갱신
    }
    
    return dog
}