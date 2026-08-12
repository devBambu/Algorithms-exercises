func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map { target in 
        return target.0.enumerated().map {
            $0.element + target.1[$0.offset]
        }
    }
}