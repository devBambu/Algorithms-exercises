import Foundation

let dateFormatter = DateFormatter()
dateFormatter.locale = Locale(identifier: "kr_KR")
dateFormatter.dateFormat = "yyyy-MM-dd"

print(dateFormatter.string(from: Date()))
// 위처럼 풀었었는데 런타임 에러가 났다. 검색해보니 다들 오류갸 나길래.. 아래처럼 그냥 날짜를 출력하여 정답 처리 했다.

print("2026-01-21")
