import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    let arr = array + [height]
    return arr.sorted(by: >).firstIndex(of: height)!
}