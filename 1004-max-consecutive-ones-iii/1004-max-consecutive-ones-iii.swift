class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var zeroCount = 0
        var maxCount = 0
        var left = 0
        for i in 0..<nums.count {
            if nums[i] == 0 {
                zeroCount += 1
            }
            if zeroCount <= k {
                maxCount = nums[left...i].count
            }
            if zeroCount > k {
                left += 1
                if nums[left-1] == 0 {
                    zeroCount -= 1
                }
            }
        }
        return maxCount
    }
}