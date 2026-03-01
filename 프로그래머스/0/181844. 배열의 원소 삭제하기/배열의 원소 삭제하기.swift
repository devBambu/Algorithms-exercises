import Foundation

// 풀이 1) remove 사용
// reduce문 내에서 contains를 확인하기 위해 매번 delete_list를 전체 순회하면 연산 속도가 오래 걸릴것 같았다.
// 따라서 contains 연산 속도를 줄이기 위해 delete_list를 변수로 생성하여 하나씩 지워나가는 방식으로 구현하였다.
func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    var delete = delete_list
    return arr.reduce(into: [Int]()) { result, num in
        if delete.contains(num) {
            let i = delete.firstIndex(of: num)!
            delete.remove(at: i)
        } else { 
            result.append(num)
        }
    }
}

// 풀이 2) remove 없이 구현한 풀이
// 채점시 연산 속도와 메모리 사용량은 1번 풀이와 크게 다르지 않은듯했다...
// 1번 풀이와의 차이점은 remove 연산의 여부이다.
func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    return arr.reduce(into: [Int]()) { result, num in
        if !delete_list.contains(num) { 
            result.append(num) 
        }
    }
}
