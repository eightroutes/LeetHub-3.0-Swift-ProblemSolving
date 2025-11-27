class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxCount = 0
        var currentCount = 0

        for num in nums {
            if num == 1 {
                currentCount += 1
            } else {
                currentCount = 0
            }
            maxCount = max(maxCount, currentCount)
        }
        
        return maxCount
    }
}