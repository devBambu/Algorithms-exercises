import Foundation

let x = Int(readLine() ?? "")!
let y = Int(readLine() ?? "")!

switch (x, y) {
case (0..., 0...):
    print("1")
case (...0, 0...):
    print("2")
case (...0, ...0):
    print("3")
case (0..., ...0):
    print("4")
default:
    print("")
}