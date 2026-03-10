import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int {
    let calendar = Calendar(identifier: .gregorian)
    
    let dateComp1 = DateComponents(year: date1[0], month: date1[1], day: date1[2])
    let dateComp2 = DateComponents(year: date2[0], month: date2[1], day: date2[2])
    
    return calendar.date(from: dateComp1)! < calendar.date(from: dateComp2)! ? 1 : 0
}