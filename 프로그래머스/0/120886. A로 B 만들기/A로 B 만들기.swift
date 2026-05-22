import Foundation

func solution(_ before:String, _ after:String) -> Int {
    let beforeDictionary = makeDictionary(of: before)
    let afterDictionary = makeDictionary(of: after)
    
    return beforeDictionary == afterDictionary ? 1 : 0
}

func makeDictionary(of text: String) -> [Character: Int] {
    let array = text.map { $0 }
    var dic: [Character: Int] = [:]
    
    for letter in array {
        dic[letter, default: 0] += 1
    }
    
    return dic
}