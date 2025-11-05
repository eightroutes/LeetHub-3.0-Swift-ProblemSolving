class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
        return n
        }
        var prev2 = 1
        var prev1 = 2
        
        for _ in 3...n {
            let current = prev1 + prev2
            prev2 = prev1
            prev1 = current
        }
        
        return prev1
    }
}