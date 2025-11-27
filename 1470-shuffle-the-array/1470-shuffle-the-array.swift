class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        // ArraySlice를 명시적으로 Array 타입으로 변환합니다.
        let nums1 = Array(nums[0..<n])
        let nums2 = Array(nums[n..<nums.count])
        var answer = [Int]()
        // var zipped = zip(nums1, nums2)
        
        // let answer = zipped.flatMap { [$0, $1] }

        for i in 0..<n {
            answer.append(nums1[i])
            answer.append(nums2[i])
        }

        return answer
    }
}