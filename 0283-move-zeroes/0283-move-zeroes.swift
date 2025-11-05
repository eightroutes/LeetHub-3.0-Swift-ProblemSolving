class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var writeIndex = 0
    
        for readIndex in 0..<nums.count {
            if nums[readIndex] != 0 {
                nums[writeIndex] = nums[readIndex]
                writeIndex += 1
            }
        }
        
        for i in writeIndex..<nums.count {
            nums[i] = 0
        }
        print(nums)
    }
}