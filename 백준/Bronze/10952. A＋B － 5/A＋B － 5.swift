import Foundation

while true {
    let nums = (readLine() ?? "").components(separatedBy: .whitespaces).map{ Int($0)! }
    if nums[0] == 0 && nums[1] == 0 {
        break
    }
    print(nums.reduce(0, +))
}