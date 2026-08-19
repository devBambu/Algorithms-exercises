func solution(_ s:String, _ n:Int) -> String {
    let upperRange = (Character("A").asciiValue!...Character("Z").asciiValue!) // 소문자 아스키코드 범위
    let lowerRange = (Character("a").asciiValue!...Character("z").asciiValue!) // 대문자 아스키코드 범위

    return s.map {
        guard $0 != " " else { return " " } // 공백 제외
        
        let code = $0.asciiValue!
        let newCode = Int(code) + n
        var scalar = UnicodeScalar(newCode)!
        
        if lowerRange.contains(code) && newCode > Int(lowerRange.upperBound) ||
        upperRange.contains(code) && newCode > Int(upperRange.upperBound) {
            scalar = UnicodeScalar(newCode - 26)!
        }
        
        return String(Character(scalar))
    }.joined()
}