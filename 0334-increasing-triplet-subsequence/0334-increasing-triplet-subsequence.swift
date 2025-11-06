class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var (small, mid) = (Int.max, Int.max)
        
        for n in nums {
            if n <= small {
                small = n
            } else if n <= mid {
                mid = n
            } else {
                return true
            }
        }
        return false
    }
}