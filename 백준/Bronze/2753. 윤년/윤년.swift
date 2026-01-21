import Foundation

let year = Int(readLine() ?? "")!


if (year.isMultiple(of: 4) && !year.isMultiple(of: 100))
    || year.isMultiple(of: 400) {
    print("1")
} else {
    print("0")
}