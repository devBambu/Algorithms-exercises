func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map { element1, element2 in 
        return zip(element1, element2).map {
            $0 + $1
        }
    }
}