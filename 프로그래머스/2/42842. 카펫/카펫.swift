import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    // brown + yellow = 넓이
    let area = brown + yellow
    var height = Int(sqrt(Float(area)))
    var width = -1
    
    while height >= 3 {
        if area % height == 0 {
            width = area / height
        }
        
        let yellowArea = (width - 2) * (height - 2)    
        if yellowArea == yellow { break }
        
        height -= 1
    }
    
    return [width, height]
}