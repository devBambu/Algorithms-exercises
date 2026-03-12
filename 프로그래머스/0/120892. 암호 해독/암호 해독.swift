import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    return cipher.enumerated().reduce("") {
        ($1.offset + 1).isMultiple(of: code) ? $0 + String($1.element) : $0
    }
}