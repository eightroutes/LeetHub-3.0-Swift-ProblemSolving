class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var result = ""

        let count = max(word1.count, word2.count)
        print(count)

        for i in 0...count {
            if i < word1.count {
                let index1 = word1.index(word1.startIndex, offsetBy: i)
                result.append(word1[index1])
            }
            if i < word2.count {
                let index2 = word2.index(word2.startIndex, offsetBy: i)
                result.append(word2[index2])
            }
        }


        return result
    }
}