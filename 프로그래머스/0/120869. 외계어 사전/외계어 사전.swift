import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    let dicSpell = dic.reduce(into: [[String]]()) {
        $0.append($1.map { String($0) }.sorted())
    }

    for target in dicSpell {
        if target == spell.sorted() {
            return 1
        }
    }
    
    return 2
}