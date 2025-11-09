class Solution {
    func removeStars(_ s: String) -> String {
        let s = Array(s)
        var result = ""
        
        for i in 0..<s.count {
            if s[i] == "*" {
                result.popLast()
            } else {
                result.append(s[i])
            }
        }
        return result
    }
}