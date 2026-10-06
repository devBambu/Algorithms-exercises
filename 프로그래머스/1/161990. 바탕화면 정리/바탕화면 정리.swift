import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    let fileCoordinates = wallpaper.enumerated().flatMap { row in
        let arr = Array(row.element).enumerated()
        
        return arr.filter { $0.element == "#" }
            .map { (row.offset, $0.offset) }
    } // 파일이 존재하는 위치의 왼쪽 위 모서리 좌표들 -- ex) 예제1의 첫 번째 파일의 경우 왼쪽 모서리 좌표인 (0,1)로 매핑
    
    let x = fileCoordinates.map { $0.0 }
    let y = fileCoordinates.map { $0.1 }
    
    return [x.min()!, y.min()!, x.max()! + 1, y.max()! + 1]
}