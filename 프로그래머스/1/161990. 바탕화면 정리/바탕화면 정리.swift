import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var (lux, luy, rdx, rdy) = (50, 50, 0, 0)
    
    for row in wallpaper.enumerated() {
        for column in Array(row.element).enumerated() {
            if column.element == "#" {
                lux = row.offset < lux ? row.offset : lux
                rdx = row.offset + 1 > rdx ? row.offset + 1 : rdx
                
                luy = column.offset < luy ? column.offset : luy
                rdy = column.offset + 1 > rdy ? column.offset + 1 : rdy
            }
        }
    }
    
    return [lux, luy, rdx, rdy]
}