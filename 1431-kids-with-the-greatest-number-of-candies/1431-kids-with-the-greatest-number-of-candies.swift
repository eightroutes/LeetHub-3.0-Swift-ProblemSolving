class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let count = candies.count
        var result = Array(repeating: false, count: count)
        let greatest = candies.max()!

        for i in 0..<count {
            if candies[i] + extraCandies >= greatest {
                result[i] = true
            }
        }

        return result
    }
}