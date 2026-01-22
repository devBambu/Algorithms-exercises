import Foundation

let input = readLine() ?? ""
var score: Double = 0

switch Grade(rawValue: input.first!) {
case .A: score = 4.0
case .B: score = 3.0
case .C: score = 2.0
case .D: score = 1.0
case .F: score = 0.0
default: break
}

if input.last! == "+" {
    score += 0.3
} else if input.last! == "-" {
    score -= 0.3
}

print(score)

enum Grade: Character {
    case A = "A"
    case B = "B"
    case C = "C"
    case D = "D"
    case F = "F"
}