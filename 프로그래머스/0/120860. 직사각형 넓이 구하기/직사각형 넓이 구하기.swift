import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let y = dots.filter { $0[0] == dots[0][0] }
    let x = dots.filter { $0[1] == dots[0][1] }
    let width = abs(x[0][0] - x[1][0])
    let height = abs(y[0][1] - y[1][1])
    return width * height
}