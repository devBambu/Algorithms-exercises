import Foundation

func solution(_ dots:[[Int]]) -> Int { 
    var width = 0
    var height = 0
    
    for dot in dots {
        if dot[0] == dots[0][0] {
            height = abs(dots[0][1] - dot[1])
        } else if dot[1] == dots[0][1] {
            width = abs(dots[0][0] - dot[0])
        }
    }
    
    return width * height
}