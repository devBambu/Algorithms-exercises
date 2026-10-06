import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var (lux, luy, rdx, rdy) = (50, 50, 0, 0)
    
    for (i, row) in wallpaper.enumerated() {
        for (j, column) in row.enumerated() {
            if column == "#" {
                lux = min(lux, i)
                luy = min(luy, j)
                rdx = max(rdx, i + 1)
                rdy = max(rdy, j + 1)
            }
        }
    }
    
    return [lux, luy, rdx, rdy]
}