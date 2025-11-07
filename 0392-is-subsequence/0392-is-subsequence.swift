class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var sIndex = 0
        if s.isEmpty { return true }
        for ch in t {
            if ch == s[s.index(s.startIndex, offsetBy: sIndex)] {
                if sIndex == s.count - 1 {
                    return true
                }
                sIndex += 1
            }
        }
        return false
    }
}