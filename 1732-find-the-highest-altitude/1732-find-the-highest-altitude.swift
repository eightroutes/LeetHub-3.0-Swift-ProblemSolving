class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var highest = 0
        var altitudes = [Int]()
        altitudes.append(0)
        for g in gain {
            highest += g
            altitudes.append(highest)
        }
        return altitudes.max()!
    }
}