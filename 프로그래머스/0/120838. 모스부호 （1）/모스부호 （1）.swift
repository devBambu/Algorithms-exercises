import Foundation

func solution(_ letter:String) -> String {
    let morse = [".-": "a", "-...": "b", "-.-.": "c", "-..": "d", ".": "e", "..-.": "f", "--.": "g", "....": "h", "..": "i", ".---": "j", "-.-": "k", ".-..": "l", "--": "m", "-.": "n", "---": "o",".--.":"p","--.-":"q",".-.":"r", "...":"s", "-":"t", "..-":"u", "...-":"v", ".--":"w", "-..-":"x", "-.--":"y","--..":"z"
    ]
    
    return letter.components(separatedBy: .whitespaces).reduce("") {
        return $0 + (morse[$1] ?? "")
    }
}