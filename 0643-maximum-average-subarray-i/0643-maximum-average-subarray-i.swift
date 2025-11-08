class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var currentSum = 0
        for i in 0..<k {
            currentSum += nums[i] // k까지만의 합
        }
        var maxSum = currentSum
        for i in k..<nums.count {
            currentSum = currentSum - nums[i-k] + nums[i]
            if currentSum > maxSum {
                maxSum = currentSum
            }
        }
        return Double(maxSum) / Double(k)        
    }
}