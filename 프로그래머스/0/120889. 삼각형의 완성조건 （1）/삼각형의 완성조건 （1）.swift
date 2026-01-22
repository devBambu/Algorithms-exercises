import Foundation

func solution(_ sides:[Int]) -> Int {
    let arr = sides.sorted(by: >)
    return arr[0] < arr[1] + arr[2] ? 1 : 2
}