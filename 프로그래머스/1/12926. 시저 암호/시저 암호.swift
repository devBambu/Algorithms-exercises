func solution(_ s:String, _ n:Int) -> String {
    let upperRange = (Character("A").asciiValue!...Character("Z").asciiValue!) // 소문자 아스키코드 범위
    let lowerRange = (Character("a").asciiValue!...Character("z").asciiValue!) // 대문자 아스키코드 범위
    let num = UInt8(n)

    return s.map {
        let code = $0.asciiValue!
        
        let scalar: UnicodeScalar? = switch code {
            case upperRange:
            UnicodeScalar((code + num - upperRange.lowerBound) % 26 + upperRange.lowerBound)
            
            case lowerRange:
            UnicodeScalar((code + num - lowerRange.lowerBound) % 26 + lowerRange.lowerBound)
            
            default: // 공백일 경우
            nil
        }
        
        if let scalar {
            return String(Character(scalar))
        } else {
            return " "
        }
    }.joined()
}