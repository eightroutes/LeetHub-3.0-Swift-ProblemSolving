class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var currentSum = nums[0..<k].reduce(0, +)
        var maxSum = currentSum
        print(currentSum)
        for i in k..<nums.count {
            currentSum = currentSum - nums[i-k] + nums[i]
            maxSum = max(maxSum, currentSum)
            print(maxSum)
        }
        return Double(maxSum) / Double(k)
    }
}