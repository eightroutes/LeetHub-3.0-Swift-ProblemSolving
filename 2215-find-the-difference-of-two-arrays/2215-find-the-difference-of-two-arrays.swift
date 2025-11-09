class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        
        let subtract1 = set1.subtracting(set2)
        let subtract2 = set2.subtracting(set1)
        
        return [Array(subtract1), Array(subtract2)]
    }
}