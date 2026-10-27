func solution(_ s:String) -> String {
    let comp = s.components(separatedBy: .whitespaces)

    return comp.reduce("") { jaden, word in
        var transformed = jaden.isEmpty ? "" : " "
        
        for (i, letter) in word.enumerated() {
            let sl = String(letter)
            
            if i == 0 {
                transformed += Int(sl) == nil ? sl.uppercased() : sl
            } else {
                transformed += sl.lowercased()
            }
        }
        
        return jaden + transformed
    }
}