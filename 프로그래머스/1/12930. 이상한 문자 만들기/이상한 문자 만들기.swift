func solution(_ s:String) -> String {
    return s.components(separatedBy: .whitespaces)
    .map { word in 
        word.enumerated().reduce("") {
                $1.offset % 2 == 0 ? $0 + $1.element.uppercased() : $0 + $1.element.lowercased()
            }
    }
    .joined(separator: " ")
}