class Solution {
    func canBeTypedWords(_ text: String, _ brokenLetters: String) -> Int {
        let words = text.split(separator: " ")
        var output = words.count

        for word in words {
            for letter in brokenLetters {
                if word.contains(letter) {
                    output -= 1
                    break
                }
            }
        }

        return output
    }
}