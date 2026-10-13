import Foundation

func solution(_ message:String, _ spoiler_ranges:[[Int]]) -> Int {
    var screenMessage = message
    
    for range in spoiler_ranges {
        for index in range[0]...range[1] {
            let i = screenMessage.index(screenMessage.startIndex, offsetBy: index)
            
            if screenMessage[i] == " " { continue }
            screenMessage.replaceSubrange(i...i, with: "#")
        }
    }
    
    let messageComp = message.components(separatedBy: .whitespaces)
    var screenComp = screenMessage.components(separatedBy: .whitespaces)
    
    let hidden = screenComp.enumerated().filter { $0.element.contains("#") }
    var spoilerWord = Set<String>() // 공개된 스포 단어
    
    var important = 0
    
    for h in hidden {
        let target = messageComp[h.offset] // 스포 방지 해제 단어 - phone
        screenComp[h.offset] = target // screenComp 대치
        
        if screenComp.count(where: { $0 == target }) == 1
        && !spoilerWord.contains(target) {
            spoilerWord.insert(target) // 공개 스포 단어 추가
            important += 1 // 중요 단어 개수 +1
        }
    }
    
    return important
}