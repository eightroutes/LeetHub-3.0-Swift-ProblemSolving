class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        for i in 1..<nums.count-1 {
            let leftSum = nums.prefix(i).reduce(0, +)
            let rightSum = nums.suffix(nums.count-1-i).reduce(0,+)
            if leftSum == rightSum {
                return i
            }
        }
        return -1
    }
}