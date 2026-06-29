import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    let separated = my_str.map { String($0) }

    return stride(from: 0, to: my_str.count, by: n).reduce(into: [String]()) {
        guard $1 + n <= my_str.count else {
            return $0.append(contentsOf: [separated[$1...].joined()])
        }
        
        return $0.append(contentsOf: [separated[$1..<($1 + n)].joined()])
    }
}