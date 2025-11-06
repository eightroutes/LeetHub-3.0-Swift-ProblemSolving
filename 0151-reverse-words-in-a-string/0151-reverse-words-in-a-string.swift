class Solution {
    func reverseWords(_ s: String) -> String {
        var words = s.split(separator: " ")
        words.reverse()
        let reversedWords = words.joined(separator: " ")
        return reversedWords
    }
}