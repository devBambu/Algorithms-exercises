import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var (lux, luy, rdx, rdy) = (50, 50, 0, 0)
    
    for row in wallpaper.enumerated() {
        for column in Array(row.element).enumerated() {
            if column.element == "#" {
                lux = min(row.offset, lux)
                luy = min(column.offset, luy)
                rdx = max(row.offset + 1, rdx)
                rdy = max(column.offset + 1, rdy)
            }
        }
    }
    
    return [lux, luy, rdx, rdy]
}