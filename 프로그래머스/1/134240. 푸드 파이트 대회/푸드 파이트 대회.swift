import Foundation

func solution(_ food:[Int]) -> String {
    let singleDisplay = food.enumerated().reduce([Int]()) { arr, f in
        guard f.element > 0 else { return arr }
        return arr + Array(repeating: f.offset, count: f.element / 2)
    }
    
    let display = singleDisplay + [0] + singleDisplay.reversed()
    
    return display.map { String($0) }.joined()
}