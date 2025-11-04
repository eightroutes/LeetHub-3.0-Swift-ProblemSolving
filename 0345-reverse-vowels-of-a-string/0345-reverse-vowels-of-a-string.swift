class Solution {
    func reverseVowels(_ s: String) -> String {
        let vowels = ["a", "e", "i", "o", "u"]
        var vowelArr = [Character]()
        var sArr = s.map { $0 }

        for i in 0..<sArr.count {
            if vowels.contains(String(sArr[i]).lowercased()) {
                vowelArr.append(sArr[i])
            }
        }
        for i in 0..<sArr.count {
            if vowels.contains(String(sArr[i]).lowercased()) {
                if !vowelArr.isEmpty {
                    sArr[i] = vowelArr.popLast()!
                } else {
                    break
                }
            }
        }
        return String(sArr)
    }
}