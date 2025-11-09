class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        
        var result = Array(repeating: [Int](), count: 2)
    
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        
        for num in set1 {
            if !set2.contains(num) {
                result[0].append(num)
            }
        }
        
        for num in set2 {
            if !set1.contains(num) {
                result[1].append(num)
            }
        }
        
        return result
    }
}