class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var currentSum = nums[0..<k].reduce(0, +)
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