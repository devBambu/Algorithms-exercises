import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let maxHeight = park.count
    let maxWidth = park[0].count
    
    var dog = [0, 0] // 로봇 강아지 좌표
    var hurdles = [[Int]]() // 장애물 좌표
    
    for (i, row) in park.enumerated() {
        for (j, column) in Array(row).enumerated() {
            if column == "X" {
                hurdles.append([i, j])
            } else if column == "S" {
                dog = [i, j]
            }
        }
    }
    
    for route in routes {
        let components = route.components(separatedBy: .whitespaces)
        guard let movement = Int(components[1]) else { continue }
        
        var move = dog
        var isHurdle = false
        
        switch components[0] {
            case "N", "S":
            move[0] = components[0] == "N" ? move[0] - movement : move[0] + movement
            if move[0] >= maxHeight || move[0] < 0 { continue } // 공원 범위 초과 시 탈출
            
            let min = min(dog[0], move[0])
            let max = max(dog[0], move[0])
            
            isHurdle = hurdles.contains(where: {
                $0[1] == move[1] &&
                $0[0] >= min && $0[0] <= max
            })
            
            case "W", "E":
            move[1] = components[0] == "W" ? move[1] - movement : move[1] + movement
            if move[1] >= maxWidth || move[1] < 0 { continue } // 공원 범위 초과 시 탈출
            
            let min = min(dog[1], move[1])
            let max = max(dog[1], move[1])
            
            isHurdle = hurdles.contains(where: {
                $0[0] == move[0] &&
                $0[1] >= min && $0[1] <= max
            })
            
            default:
            break
        }
        
        dog = isHurdle ? dog : move // 강아지 위치 갱신
    }
    
    return dog
}