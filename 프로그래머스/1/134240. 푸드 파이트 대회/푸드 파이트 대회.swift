import Foundation

func solution(_ food:[Int]) -> String {
    let display = food.enumerated().reduce("") { string, f in
        guard f.element > 0 else { return string }
        return string + Array(repeating: String(f.offset), count: f.element / 2).joined()
    }
    
    return display + "0" + display.reversed()
}