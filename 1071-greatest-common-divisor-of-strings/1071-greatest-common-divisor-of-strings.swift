class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if str1 + str2 != str2 + str1 {
            return ""
        }

        func gcd(_ x: Int, _ y: Int) -> Int {
            if y == 0 {
                return x
            } else {
            return gcd(y, x % y)
            }
        }

        let gcdLength = gcd(str1.count, str2.count)
        return String(str1.prefix(gcdLength))
    }    
}