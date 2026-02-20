import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count != arr2.count {
        return arr1.count > arr2.count ? 1 : -1
    } else {
        let one = arr1.reduce(0, +)
        let two = arr2.reduce(0, +)
        
        return one == two ? 0 : one > two ? 1 : -1
    }
}