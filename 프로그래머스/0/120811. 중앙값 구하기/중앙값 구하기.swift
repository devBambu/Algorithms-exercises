import Foundation

func solution(_ array:[Int]) -> Int {
    let i = array.count / 2
    return array.sorted()[i]
}