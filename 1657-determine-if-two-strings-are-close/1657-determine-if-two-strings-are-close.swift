class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        
        let set1 = Set(word1)
        let set2 = Set(word2)

        if set1 != set2 { return false }
        
        var freq1 = [Int]()
        var freq2 = [Int]()

        for ch in set1 {
            freq1.append(word1.filter{$0==ch}.count)
            freq2.append(word2.filter{$0==ch}.count)
        }
        return freq1.sorted() == freq2.sorted()
        
             
    }
}