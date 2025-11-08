class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let s = Array(s)
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        
        // 첫 번째 윈도우 모음 개수
        var currentCount = 0
        for i in 0..<k {
            if vowels.contains(s[i]) {
                currentCount += 1
            }
        }
        
        // 첫 윈도우를 최댓값으로 초기화
        var maxCount = currentCount
        
        // 슬라이딩 윈도우
        for i in k..<s.count {
            if vowels.contains(s[i-k]) {
                currentCount -= 1
            }
            if vowels.contains(s[i]) {
                currentCount += 1
            }
            maxCount = max(maxCount, currentCount)
        }
        
        return maxCount
    }
}