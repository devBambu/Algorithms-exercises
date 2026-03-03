import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var ans = 1
    
    // 수포자1 점수
    let student1 = answers.reduce(into: 0) {
        $0 = $1 == ans ? $0 + 1 : $0
        ans = ans == 5 ? 1 : ans + 1
        
    }
    
    ans = 1 // 정답 초기화
    // 수포자2 점수
    let student2 = answers.enumerated().reduce(into: 0) {
        if $1.offset.isMultiple(of: 2) {
            $0 = $1.element == 2 ? $0 + 1 : $0
        } else {
            $0 = $1.element == ans ? $0 + 1 : $0
            ans = ans == 1 ? ans + 2 : ans == 5 ? 1 : ans + 1
        }
        
    }
    
    var count = 0
    let student3Ans = [3, 1, 2, 4, 5]
    var i = 0
    
    let student3 = answers.reduce(into: 0) {
        count += 1
        
        if count == 3 { 
            count = 1
            i += 1
        }
        if i == 5 { i = 0 }
        $0 = $1 == student3Ans[i] ? $0 + 1 : $0
    }
    
    let max = [student1, student2, student3].max()!
    return [student1, student2, student3].enumerated().reduce(into: [Int]()) {
        print($1.element, max)
        if $1.element == max {
            $0.append($1.offset + 1)
        }
    }
}