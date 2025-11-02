class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        let minCount = min(str1.count, str2.count)
        let len1 = str1.count
        let len2 = str2.count

        func isValid(_ k: Int) -> Bool {
            if (len1 % k != 0) || (len2 % k != 0) {
                return false
            } 
            let base = String(str1.prefix(k))
            let repStr1 = String(repeating: base, count: len1 / k)
            let repStr2 = String(repeating: base, count: len2 / k) 

            return (str1 == repStr1) && (str2 == repStr2)
        }

        for i in stride(from: minCount, to: 0, by: -1) {
            if isValid(i) {
                return String(str1.prefix(i))
            }
        }
        return ""
    }
}