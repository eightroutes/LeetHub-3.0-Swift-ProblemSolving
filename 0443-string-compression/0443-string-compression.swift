class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        
        let charArr = Array(chars)
        var result = [Character]()
        var index = 0

        if chars.count == 1 {
            return chars.count
        }
        
        for i in 1..<charArr.count {
            if charArr[i] != charArr[i-1] || i == charArr.count-1 {
                result.append(charArr[i-1])
                let count = charArr[index...i].count { $0 == charArr[i-1] }
                if count > 1 {
                    result.append(contentsOf: String(count))
                }
                index = i
            }
        }
        chars = result
        return result.count
    }
}