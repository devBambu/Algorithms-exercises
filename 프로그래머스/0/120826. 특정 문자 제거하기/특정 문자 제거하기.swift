import Foundation

// 최종 답안
func solution(_ my_string:String, _ letter:String) -> String {
    if my_string.contains(letter) {
        return my_string.replacingOccurrences(of: letter, with: "")
    } else {
        return my_string
    }
    
}

// 기존 답안
// - 아무 조건없이 letter를 ""로 치환하여 바로 반환하도록 했는데, 3번 테스트케이스에서 런타임 오류가 발생했다.
// - 질문하기를 찾아보니 3번 케이스의 인풋이 알파벳 영문자가 아닌 다른 문자가 들어가는게 아닐까- 라는 글이 있었다.
// - 제한 사항으로 letter는 알파벳 영문자라했으니 다른 문자이지는 않을 것 같고, my_string이 갖고 있지 않은 문자일 수 있을 것 같아 if문을 추가했다.
func solution2(_ my_string: String, _ letter: String) -> String {
    return my_string.replacingOccurrences(of: letter, with: "")
}
