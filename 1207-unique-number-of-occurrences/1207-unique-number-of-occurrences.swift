class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        let numSet = Set(arr)
        var countSet = Set<Int>()

        for num in numSet {
            let count = arr.filter { $0 == num }.count
            countSet.insert(count)
        }
        return numSet.count == countSet.count
    }
}