import Foundation

func solution(_ strArr:[String]) -> [String] {    
    return strArr.enumerated().reduce(into: [String]()) {
        if ($1.offset).isMultiple(of: 2) {
            $0.append(($1.element).lowercased())
        } else {
            $0.append(($1.element).uppercased())
        }
    }
}