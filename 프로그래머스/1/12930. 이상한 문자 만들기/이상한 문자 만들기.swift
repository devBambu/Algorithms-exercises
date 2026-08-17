func solution(_ s:String) -> String {
    return s.components(separatedBy: .whitespaces).enumerated()
    .reduce("") { string, word in
            let transformed = word.element.enumerated().reduce("") {
                $1.offset % 2 == 0 ? $0 + $1.element.uppercased() : $0 + $1.element.lowercased()
            }
   
            return word.offset == 0 ? string + transformed : string + " " + transformed
    }
}