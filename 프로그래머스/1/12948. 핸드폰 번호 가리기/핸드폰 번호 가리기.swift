func solution(_ phone_number:String) -> String {
    let hideCount = phone_number.count - 4
    return String(repeating: "*", count: hideCount) + phone_number.suffix(4)
}