import Foundation

var rollBook = Array(1...30)

for _ in 1...28 {
    let submit = Int(readLine() ?? "")!
    let idx = rollBook.firstIndex(of: submit)!
    rollBook.remove(at: idx)
}

rollBook.sorted().forEach {
    print($0)
}